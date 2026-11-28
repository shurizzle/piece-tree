set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(0), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(-1), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(99), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(""), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('$'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqaa'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqbb.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqa'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqab'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqc'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('*abc.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('*aa.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqa*'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kq?bc.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('{kqaa,kqbb}.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('{kqaa,kqbb.txt}'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('%'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('#'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('xyzzy'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqabc.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('^kqa'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('txt$'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('^kqbb'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kq'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('*.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqaa.txt*'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqa\\?c'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('./kqaa.txt'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('**'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('{kqaa'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqaa}'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('[kq]qbb'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('[kq'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqaa.t*t'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('KQAA'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(1.5), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree([]), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree({}), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(v:null), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(v:true), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqa\\*'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree('kqb~'), "seq_last", -1)
"---
set nomore
call execute("edit kqaa.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! u")
call execute("edit kqbb.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uu")
call execute("edit kqabc.txt")
execute "normal! ione\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! itwo\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ithree\<Esc>"
call feedkeys("\<Esc>", "xt")
call execute("normal! uuu")
call execute("edit kqaa.txt")
echo get(undotree(), "seq_last", -1) len(undotree("kqbb").entries) undotree("kqabc").seq_cur
