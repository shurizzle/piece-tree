set ts=8
set vts=4,8
set vts=4,,8
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=,4
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4,
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=0,4
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=-1
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=x
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4,8
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=99999
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=10000
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=9999
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=0
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=1,1,1
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=+4
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4,+8
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=3
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=8,4
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4,8,2,16
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=010
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4,08
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=1,
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=00
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=0,0
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=,
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4,0
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=2147483648
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4.5
echo string(&vts) string(execute('set vts?'))
"---
set ts=8
set vts=4,8
set vts=4;8
echo string(&vts) string(execute('set vts?'))
"---
set vts=4,8
let &vts = '4,,8'
echo string(&vts)
"---
set vts=4,8
let &vts = ',4'
echo string(&vts)
"---
set vts=4,8
let &vts = '4,'
echo string(&vts)
"---
set vts=4,8
let &vts = '0,4'
echo string(&vts)
"---
set vts=4,8
let &vts = '-1'
echo string(&vts)
"---
set vts=4,8
let &vts = 'x'
echo string(&vts)
"---
set vts=4,8
let &vts = '4,8'
echo string(&vts)
"---
set vts=4,8
let &vts = '99999'
echo string(&vts)
"---
set vts=4,8
let &vts = '10000'
echo string(&vts)
"---
set vts=4,8
let &vts = '9999'
echo string(&vts)
"---
set vts=4,8
let &vts = ''
echo string(&vts)
"---
set vts=4,8
let &vts = '0'
echo string(&vts)
"---
set vts=4,8
let &vts = '4 8'
echo string(&vts)
"---
set vts=4,8
let &vts = '1,1,1'
echo string(&vts)
"---
set vts=4,8
let &vts = '+4'
echo string(&vts)
"---
set vts=4,8
let &vts = '4,+8'
echo string(&vts)
"---
set vts=4,8
let &vts = '3'
echo string(&vts)
"---
set vts=4,8
let &vts = '8,4'
echo string(&vts)
"---
set vts=4,8
let &vts = '4,8,2,16'
echo string(&vts)
"---
set vts=4,8
let &vts = '010'
echo string(&vts)
"---
set vts=4,8
let &vts = '4,08'
echo string(&vts)
"---
set vts=4,8
let &vts = '1,'
echo string(&vts)
"---
set vts=4,8
let &vts = '00'
echo string(&vts)
"---
set vts=4,8
let &vts = '0,0'
echo string(&vts)
"---
set vts=4,8
let &vts = ','
echo string(&vts)
"---
set vts=4,8
let &vts = '4,0'
echo string(&vts)
"---
set vts=4,8
let &vts = '2147483648'
echo string(&vts)
"---
set vts=4,8
let &vts = '4.5'
echo string(&vts)
"---
set vts=4,8
let &vts = '4;8'
echo string(&vts)
"---
set vts=
set vts+=4
echo string(&vts)
"---
set vts=
set vts+=8
echo string(&vts)
"---
set vts=
set vts+=2
echo string(&vts)
"---
set vts=
set vts+=4,8
echo string(&vts)
"---
set vts=
set vts+=
echo string(&vts)
"---
set vts=4
set vts+=4
echo string(&vts)
"---
set vts=4
set vts+=8
echo string(&vts)
"---
set vts=4
set vts+=2
echo string(&vts)
"---
set vts=4
set vts+=4,8
echo string(&vts)
"---
set vts=4
set vts+=
echo string(&vts)
"---
set vts=4,8
set vts+=4
echo string(&vts)
"---
set vts=4,8
set vts+=8
echo string(&vts)
"---
set vts=4,8
set vts+=2
echo string(&vts)
"---
set vts=4,8
set vts+=4,8
echo string(&vts)
"---
set vts=4,8
set vts+=
echo string(&vts)
"---
set vts=4,4,8
set vts+=4
echo string(&vts)
"---
set vts=4,4,8
set vts+=8
echo string(&vts)
"---
set vts=4,4,8
set vts+=2
echo string(&vts)
"---
set vts=4,4,8
set vts+=4,8
echo string(&vts)
"---
set vts=4,4,8
set vts+=
echo string(&vts)
"---
set vts=8,4
set vts+=4
echo string(&vts)
"---
set vts=8,4
set vts+=8
echo string(&vts)
"---
set vts=8,4
set vts+=2
echo string(&vts)
"---
set vts=8,4
set vts+=4,8
echo string(&vts)
"---
set vts=8,4
set vts+=
echo string(&vts)
"---
set vts=
set vts-=4
echo string(&vts)
"---
set vts=
set vts-=8
echo string(&vts)
"---
set vts=
set vts-=2
echo string(&vts)
"---
set vts=
set vts-=4,8
echo string(&vts)
"---
set vts=
set vts-=
echo string(&vts)
"---
set vts=4
set vts-=4
echo string(&vts)
"---
set vts=4
set vts-=8
echo string(&vts)
"---
set vts=4
set vts-=2
echo string(&vts)
"---
set vts=4
set vts-=4,8
echo string(&vts)
"---
set vts=4
set vts-=
echo string(&vts)
"---
set vts=4,8
set vts-=4
echo string(&vts)
"---
set vts=4,8
set vts-=8
echo string(&vts)
"---
set vts=4,8
set vts-=2
echo string(&vts)
"---
set vts=4,8
set vts-=4,8
echo string(&vts)
"---
set vts=4,8
set vts-=
echo string(&vts)
"---
set vts=4,4,8
set vts-=4
echo string(&vts)
"---
set vts=4,4,8
set vts-=8
echo string(&vts)
"---
set vts=4,4,8
set vts-=2
echo string(&vts)
"---
set vts=4,4,8
set vts-=4,8
echo string(&vts)
"---
set vts=4,4,8
set vts-=
echo string(&vts)
"---
set vts=8,4
set vts-=4
echo string(&vts)
"---
set vts=8,4
set vts-=8
echo string(&vts)
"---
set vts=8,4
set vts-=2
echo string(&vts)
"---
set vts=8,4
set vts-=4,8
echo string(&vts)
"---
set vts=8,4
set vts-=
echo string(&vts)
"---
set vts=
set vts^=4
echo string(&vts)
"---
set vts=
set vts^=8
echo string(&vts)
"---
set vts=
set vts^=2
echo string(&vts)
"---
set vts=
set vts^=4,8
echo string(&vts)
"---
set vts=
set vts^=
echo string(&vts)
"---
set vts=4
set vts^=4
echo string(&vts)
"---
set vts=4
set vts^=8
echo string(&vts)
"---
set vts=4
set vts^=2
echo string(&vts)
"---
set vts=4
set vts^=4,8
echo string(&vts)
"---
set vts=4
set vts^=
echo string(&vts)
"---
set vts=4,8
set vts^=4
echo string(&vts)
"---
set vts=4,8
set vts^=8
echo string(&vts)
"---
set vts=4,8
set vts^=2
echo string(&vts)
"---
set vts=4,8
set vts^=4,8
echo string(&vts)
"---
set vts=4,8
set vts^=
echo string(&vts)
"---
set vts=4,4,8
set vts^=4
echo string(&vts)
"---
set vts=4,4,8
set vts^=8
echo string(&vts)
"---
set vts=4,4,8
set vts^=2
echo string(&vts)
"---
set vts=4,4,8
set vts^=4,8
echo string(&vts)
"---
set vts=4,4,8
set vts^=
echo string(&vts)
"---
set vts=8,4
set vts^=4
echo string(&vts)
"---
set vts=8,4
set vts^=8
echo string(&vts)
"---
set vts=8,4
set vts^=2
echo string(&vts)
"---
set vts=8,4
set vts^=4,8
echo string(&vts)
"---
set vts=8,4
set vts^=
echo string(&vts)
"---
set vts=4,8
set vts&
echo string(&vts)
"---
set vts=4,8
set vts<
echo string(&vts)
"---
set vts=3
echo &vts string(&vts) type(&vts)
"---
let &vts = 5
echo &vts string(&vts) type(&vts)
"---
set vts=4,8
let &vts .= ',2'
echo &vts
"---
set vts=4,8
let &vts = 3
echo &vts
let &vts = ''
echo string(&vts)
"---
set vts=4,8
enew
echo &vts
"---
set ts=8
set vts=4,8
set vts?
set ts?
set vts=
"---
set vts=4
set vts

"---
set ts=8
set vts=4,8 ts=2
set vts? ts?
"---
set ts=8
set vts=4,,8 ts=2
set ts?
"---
set ts=3 vts=4,8
set vts=x ts=5
echo &ts &vts
"---
set vts=4,8
try
 set vts=4,
catch
 echo v:exception
endtry
"---
set vts=4,8
try
 set vts=4,,
catch
 echo v:exception
endtry
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=4,8 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=3 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=2,4,6 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=1,1,1 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=8,1 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=4 vartabstop=5,3 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "a\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "\t\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "abc\tdef\tg"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "abcdefg\th"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "日\tx"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "日本語\ty\t\tz"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "é\tq"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "a\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "\ta\tb\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "ab\té\t日\t"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 2
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
echo virtcol('$') virtcol('.') virtcol('.', 1) virtcol([1, '$'])
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=1,1,1 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=8,1 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa日日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "\t\t\t\t\t\t\t\t\t\t日b"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tb"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tx\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=5,3 nonumber
let g:L = "ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日ab\t日"
0put =g:L
normal! gg0
let n = strlen(getline(1)) + 1
echo map(range(1, n), 'virtcol([1, v:val])')
echo map(range(1, n), 'virtcol([1, v:val], 1)')
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\t\tx\ty"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "abc\tdef ghi\tjkl"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\t本\t語 x"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 03l"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0w"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0e"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0f\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$h"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 00f\<Tab>;"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$F\<Tab>"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 05|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 020|"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0wb"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \tfoo\tbar"
0put =g:L
normal! gg0
execute "normal! 0$b"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgjgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gkgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0gjgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgjgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 10|gj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgjgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gkgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0gjgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgjgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 10|gj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gjgjgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! $gkgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 0gjgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 5lgjgk"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! 10|gj"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "ab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tefab\tcd\tef"
0put =g:L
normal! gg0
execute "normal! gj$"
echo string(getcurpos()) virtcol('.') virtcol('.', 1)
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "  \t y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t \tz"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "   \t\tw"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "\t  x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = " \t \t x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "x"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=0 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=4 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 noexpandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! >>" . (index([':>',':<',':>>'], ">>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! <<" . (index([':>',':<',':>>'], "<<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>" . (index([':>',':<',':>>'], ":>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :<" . (index([':>',':<',':>>'], ":<") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! :>>" . (index([':>',':<',':>>'], ":>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop=8,2 shiftwidth=3 expandtab nonumber
let g:L = "        y"
0put =g:L
normal! gg0
execute "normal! 3>>" . (index([':>',':<',':>>'], "3>>") >= 0 ? "\<CR>" : "")
echo string(getline(1)) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=4,8 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=3 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = " \tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  \t y\t z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "        x  y    z"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "a\tb\t\tc"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\t\t\tx"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "  x   y"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "\ta  \tb"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "日\tx\t"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 noexpandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab!"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 3,2"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab! 3"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly 4,8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab -indentonly! 8"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 0"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 2,4,6"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop=2,4,6 shiftwidth=4 expandtab nonumber
let g:L = "      x"
0put =g:L
normal! gg0
execute "retab 1"
echo string(getline(1)) &ts string(&vts) line('.') col('.')
"---
set tabstop=8 vartabstop= nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop= nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=4,8 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=3 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "a\tb\tc"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "  \ty"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1p')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1l')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1#')
echo string(g:o)
"---
set tabstop=8 vartabstop=2,4,6 nonumber
let g:L = "日\tz"
0put =g:L
normal! gg0
let g:o = execute('1nu')
echo string(g:o)
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop= noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=4,8 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=3 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "a"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "abc"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "  x"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "日"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 expandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! A\<Tab>\<Tab>x\<Esc>"
echo string(getline(1))
"---
set tabstop=8 vartabstop=2,4,6 noexpandtab nonumber
let g:L = "\tx"
0put =g:L
normal! gg0
execute "normal! Ax\<Tab>y\<Esc>"
echo string(getline(1))
