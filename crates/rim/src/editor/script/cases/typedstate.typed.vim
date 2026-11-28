set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f", "g h i"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3.", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f", "g h i"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3.", "xt")
call feedkeys("$", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["x", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/d | call feedkeys("3ix\<Esc>", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["x", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/s/x/y/ | call feedkeys("A!\<Esc>", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "abcdef", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("jA12\<Esc>", "xt") | 4
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "abcdef", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("jA12\<Esc>", "xt") | 4m0
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "abcdef", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("jA12\<Esc>", "xt") | 4t.
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("u", "xt")
call feedkeys("dw", "xt") | call feedkeys("u", "xt")
call feedkeys("g~~", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("l", "xt")
call feedkeys("g~~", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2g~~", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt")
call feedkeys("J", "xt") | t.
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt")
call feedkeys("J", "xt")
t.
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt")
call feedkeys("3J", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt")
call feedkeys("3J", "xt")
call feedkeys("xp", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt")
echo "L".line(".")."C".col(".")." ".string(getline(1,"$"))." ".string(getcurpos())
