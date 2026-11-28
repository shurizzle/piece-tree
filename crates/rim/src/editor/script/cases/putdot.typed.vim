set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
put! .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
0put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
$put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
1,2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
put .|put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ixy\<Esc>"
put .|echo "a"
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
put! .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
0put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
$put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
1,2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
put .|put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Aab\<Esc>"
put .|echo "a"
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
put! .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
0put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
$put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
1,2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
put .|put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal ofoo\<CR>bar\<Esc>"
put .|echo "a"
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
put! .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
0put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
$put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
1,2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
put .|put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal I  \<Esc>"
put .|echo "a"
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
put! .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
0put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
$put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
1,2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
put .|put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal Obaz\<Esc>"
put .|echo "a"
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
put! .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
0put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
$put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
1,2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
put .|put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal cwzed\<Esc>"
put .|echo "a"
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
put! .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
0put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
$put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
1,2put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
put .|put .
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
"---
set report=0 expandtab | let @a = "one\ntwo\nthree\n" | put a | 1delete | normal gg
execute "normal i\<Esc>"
put .|echo "a"
echo line('.') col('.') string(getline(1,'$')) line("'[") col("'[") line("']") col("']")
