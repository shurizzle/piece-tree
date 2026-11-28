set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>j3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjjlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 2l\<C-v>jjj3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>j3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjjlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! 3l\<C-v>jjj3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>j3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjl3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjl3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjjlIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lAX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lA\<C-w>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<C-u>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lcX\<C-h>\<C-h>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3l3IX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lAXY\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lcX\<C-c>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lA\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<Right>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lI\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lA\<Right>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3l3I\<Left>X\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc\tdef", "a\tb\tc", "日本語abc", "", "x", "\t\tz", "abcdefgh"]
0put =g:T
normal! gg0
execute "normal! $\<C-v>jjj3lIX\<Left>Y\<Esc>"
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'.") col("'.")
