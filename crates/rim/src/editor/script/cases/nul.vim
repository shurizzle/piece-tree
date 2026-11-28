call setline(1, "a\nb")
echo getline(1) len(getline(1)) line('$') col('$')
echo getline(1) == "a\nb" strlen(getline(1)) char2nr(getline(1)[1])
"---
call setline(1, ["a\nb", "c"])
echo getline(1, '$') getbufline(1, 1, '$') line('$')
%s/\n/X/
echo getline(1, '$')
"---
call writefile(["a\nb", "c"], "n.x", "b")
e n.x
echo getline(1) line('$') col('$') len(getline(1))
let g:_ = execute('w o.x')
echo getline(1, '$')
normal! lx
echo getline(1)
"---
call writefile(["a\nb", "c"], "n.x", "b")
e n.x
s/\n/X/
echo getline(1)
"---
call setline(1, "a\nb")
let g:l = getline(1)
echo g:l =~ "\n" stridx(g:l, "\n")
echo split(g:l, "\n")
echo setline(2, "x\ny")
echo getline(1, '$')
call append('$', "p\nq")
echo getline(1, '$')
echo line('$')
"---
call setline(1, ["x\ny", "z"])
%d
call setline(1, "q\n")
echo getline(1) len(getline(1))
normal! $x
echo getline(1)
"---
call setline(1, "a\nb\nc")
echo getline(1) col("$")
normal! 2|x
echo getline(1)
"---
call setline(1, "a\nb")
normal! yy
normal! p
echo getline(1, "$")
"---
call setline(1, "a\nb")
split
echo getbufline(1, 1)
"---
call setline(1, "a\nb")
echo getline(".") == getline(1) getline(1) =~# "a\\nb"
