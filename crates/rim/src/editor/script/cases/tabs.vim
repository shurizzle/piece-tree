set tabstop=1 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = ""
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=1 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = ""
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=2 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = ""
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=3 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = ""
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = ""
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日\t日日日日日\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日\t日日日日日\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日\t日日日日日\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=3 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 00"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 03l"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0ll"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0w"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0e"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0tx"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=2 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 05|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
0put =g:L
normal! gg0
execute "normal! 020|"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgjgk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gkgk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0gjgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgjgk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 10|gj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gkgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgjgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgjgk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gkgk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0gjgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgjgk"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 10|gj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gkgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj$"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgjgj"
echo [line('.'), col('.'), virtcol('.'), virtcol('.', 1)]
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
