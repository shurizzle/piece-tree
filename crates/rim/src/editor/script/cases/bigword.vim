set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a,b;c  d.e"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ"]
0put =g:T
$delete _
normal! gg015l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x  y"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["é×÷ µ_9 café.x"]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["😀a.🇮🇹b 🙂x"]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg07l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg09l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg011l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg013l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  lead  trail  "]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg01l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg03l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["..  ++"]
0put =g:T
$delete _
normal! gg05l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a"]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a b", "", "c d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a.b", "  ", "c.d"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["", "x", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["a", "", "", ""]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  ", "a b", "  "]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg0j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg1j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg2j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("ge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("gE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("w", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("b", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("e", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cWX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cEX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cwX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dW", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dB", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("dgE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("yge", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("ygE", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("cgeX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("d2W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("3E", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("2B", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("y3W", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["ab", "", "  ", "cd"]
0put =g:T
$delete _
normal! gg3j0
call execute('call feedkeys("c2EX\<Esc>", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["foo.bar-baz  qux", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg08l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg010l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg012l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["日本語abc ひらがな.カタカナ", "next . line", ""]
0put =g:T
$delete _
normal! gg014l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg02l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg04l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["  a.b c", "next . line", ""]
0put =g:T
$delete _
normal! gg06l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vBd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vged", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("v2Wd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vEEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vWhd", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dE.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("dB.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("cWX\<Esc>.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("2dW.", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
"---
set tabstop=4 nonumber
let g:T = ["x", "next . line", ""]
0put =g:T
$delete _
normal! gg00l
call execute('call feedkeys("vgEy", "xt")')
echo string(getline(1,'$')) line('.') col('.') string(getreg('"', 1, 1)) getregtype('"') line("'[") col("'[") line("']") col("']")
