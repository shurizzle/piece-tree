let x = 1
let x += 4
echo x
"---
let x = 6
let x -= 1 | let x *= 6 | let x /= 4 | let x %= 4
echo x
"---
let s = 'a'
let s .= 'b'
let s ..= 'c'
echo s
"---
let g:y = 'a' | let b:v = 2 | let w:v = 3 | let t:v = 4
echo g:y b:v w:v t:v
"---
let v:x = 1
"---
let v:version = 1
"---
echo nosuch
"---
let g:a = 1
let b:x = 2
let w:y = 3
let t:z = 4
let s:q = 5
let g: w: t: s:
"---
let x = 1
let s = 'str'
let l = [1, 2]
let d = {'a': 1}
let f = 1.5
let x
let s
let l
let d
let f
"---
let [p, q] = [1, 2] | echo p q
"---
let [h; t] = [1, 2, 3] | echo h t
"---
let [h, i] = [1]
"---
let [h] = [1, 2]
"---
let [h] = 1
"---
let a = [1, 2] | let b = a | call add(b, 3) | echo a
"---
let a = [1, 2, 3] | let a[0] = 9 | let a[-1] = 8 | echo a
"---
let a = [1, 2, 3] | let a[1:2] = [7, 6] | echo a
"---
let a = [1, 2, 3] | let a[1:2] = [7]
"---
let a = [1, 2, 3] | let a[1:1] = [7, 8]
"---
let a = [1, 2, 3] | let a[5] = 1
"---
let a = [1] | let a += [2] | echo a
"---
let d = {'a': 1} | let d.b = 2 | let d['c'] = 3 | echo d
"---
let d = {'a': 1} | let d.a += 10 | let d.a .= 'x' | echo d
"---
let d = {'a': 1} | unlet d.a | echo d
"---
let d = {'a': 1} | unlet d.zz
"---
let d = {'a': 1} | unlet! d.zz | echo d
"---
let l = [1, 2, 3, 4] | unlet l[0] | unlet l[1:2] | echo l
"---
let l = [1] | unlet l[3]
"---
let x = 1 | unlet x | echo x
"---
unlet x
"---
unlet! x
"---
unlet
"---
let &ts = 8 | echo &ts &l:ts &g:ts
"---
let &et = 1 | echo &et | let &et = 0 | echo &et
"---
set ts=8 | let &ts += 1 | echo &ts
"---
let &nosuch = 1
"---
let &ts = 99
"---
let &wildignore = '*.o *.a' | echo &wildignore
"---
let @a = 'hi' | echo @a
"---
let @a = "x\n" | let @a .= 'y' | echo @a
"---
let $FOO = 'x' | echo $FOO exists('$FOO')
"---
let $FOO = 'x' | let $FOO .= 'y' | echo $FOO
"---
let $FOO = 'x' | unlet $FOO | echo exists('$FOO')
"---
let 1 = 2
"---
let a = {}
let a.me = a
echo a
"---
let a = []
call add(a, a)
echo a
"---
echo exists('x') exists('g:x') exists('&ts') exists('*len') exists('$HOME') exists('@a') exists('nosuch')
"---
let x = 1 | echo exists('x') exists('g:x') exists('l:x')
"---
echo 1
echo 'a' . 'b'
echon 'c'
echon 'd'
echo 'e'
"---
echomsg 'm' 2
echoerr 'bad'
"---
echo
echo 'x'
echo
"---
execute 'let z = ' . 5 | echo z
"---
execute 'let' 'w = 1' | echo w
"---
execute 'nosuchcmd'
"---
execute [1]
"---
let l = [] | call add(l, 1) | call add(l, 2) | echo l
"---
call 5
"---
call nosuch()
"---
echo $nosuchvar
"---
echomsg "a\nb" "t\tx" "c\x08d" "r\rs" "e\x7f"
"---
echo "a\nb" "t\tx" "c\x08d" "r\rs" "e\x7f" "bell\x07"
"---
echoerr "a\nb" "t\tx" "c\x08d" "r\rs"
"---
echon "a\nb" "t\tx" "c\x08d"
"---
echomsg "x\ny"
messages
"---
echomsg "t\tx" "\x01"
messages
"---
echom "ciao" | echom "ciao" | echom "ciao"
"---
echo 1 | echo 2 | echon 3 | echon 4 | echo 5
"---
echom 'a' | echo 'b' | echoerr 'c' | echon 'd' | echo 'e'
"---
echon 1 | echon 2
"---
echo | echo 'x' | echo
"---
let [a, b] = [1, 2]
echo a b
let [a, b] = [b, a]
echo a b
"---
let [a, b] = [1, 2, 3]
"---
let [a, b, c] = [1, 2]
"---
let [a; b] = [1, 2, 3]
echo a b
let [a; b] = [1]
echo a b
"---
let [a, b] = 5
"---
let [a, a2] = [1]
"---
let [a;; b] = [1, 2]
"---
let x = 1
let x += 4
let x -= 1
let x *= 3
let x /= 2
let x %= 4
echo x
"---
let s = 'a'
let s .= 'b'
let s ..= 'c'
echo s
"---
let x = 'a'
let x += 1
echo x
"---
let x = [1]
let x += [2]
echo x
"---
let x = 1.5
let x += 1
echo x
let x *= 2
echo x
"---
let l = [1, 2, 3]
let l[0] = 5
let l[-1] = 7
echo l
"---
let l = [1, 2, 3]
let l[5] = 1
"---
let l = [1, 2, 3]
let l[1:2] = [8, 9]
echo l
let l[0:0] = [1, 2]
echo l
"---
let l = [1, 2, 3]
let l[1:] = [9]
echo l
let l[:0] = [0]
echo l
"---
let l = [1, 2, 3]
let l[1:2] = 5
"---
let l = [1, 2, 3]
let l[1:2] = [1]
"---
let d = {}
let d.a = 1
let d['b'] = 2
let d.c = {}
let d.c.x = 3
echo d.a d.b d.c
"---
let d = {'a': 1}
let d.a += 5
echo d
"---
let d = {'a': 1}
let d.b += 5
"---
let d = 5
let d.x = 1
"---
let d = {}
let d[1] = 'x'
echo d
"---
let d = {}
let d[[]] = 1
"---
let l = [1]
let l.x = 1
"---
let $RIMTESTVAR = 'hello'
echo $RIMTESTVAR
let $RIMTESTVAR .= ' world'
echo $RIMTESTVAR
unlet $RIMTESTVAR
echo $RIMTESTVAR
"---
let @a = 'text'
echo @a
let @a .= 'more'
echo @a
"---
let @/ = 'pat'
echo @/
"---
let &ts = 3
echo &ts
let &ts += 2
echo &ts
let &l:ts = 6
echo &ts &l:ts
"---
let &et = 1
echo &et
let &et = 0
echo &et
"---
let &ts = 'abc'
"---
let &ts = []
"---
let g:x = 1
let b:x = 2
let w:x = 3
let t:x = 4
echo g:x b:x w:x t:x x
"---
let s:x = 5
echo s:x
"---
let l:x = 5
"---
let a:x = 5
"---
let x = 1
let y = x
let z = [x, y]
echo z
"---
let x
"---
let x y
"---
let g:a = 1
let g:b = 'two'
let g:c = [3]
let g:d = {'k': 4}
let g:e = 5.5
let g:f = v:true
let g:g = v:null
let g:a g:b g:c g:d g:e g:f g:g
"---
let nosuch
"---
let d = {'a': [1, 2]}
let d.a d['a'] d.a[1]
"---
let g:l = [1, 2]
let g:l[0]
let g:l[5]
"---
let x = 
"---
let = 5
"---
let x = [
"---
let x = 1 2
"---
let x == 5
"---
let x := 5
"---
let 5x = 1
"---
let x.y = 1
"---
let a b = 1
"---
let x = 1 | let y = 2 | echo x y
"---
let x = 1 " comment
echo x
"---
let [x, y] = [1, 2] | echo x y
"---
unlet nosuch
"---
unlet! nosuch
echo 'after'
"---
let a = 1
let b = 2
unlet a b
echo exists('a') exists('b')
"---
let a = 1
unlet a nosuch
"---
let a = 1
unlet! nosuch a
echo exists('a')
"---
let l = [1, 2, 3, 4]
unlet l[0]
echo l
unlet l[1:2]
echo l
unlet l[-1]
echo l
"---
let l = [1]
unlet l[5]
"---
let l = [1]
unlet! l[5] | echo 'x'
"---
let d = {'a': 1, 'b': 2}
unlet d.a
echo d
unlet d['b']
echo d
"---
let d = {'a': 1}
unlet d.zz | echo 'x'
"---
let d = {'a': 1}
unlet d.a d.zz d
echo exists('d')
"---
unlet
"---
unlet 5
"---
unlet v:count
"---
unlet g:nosuch
"---
unlet x y | echo 'x'
"---
let x = 1
unlet x | echo exists('x')
"---
let l = [[1, 2], [3]]
unlet l[0][1]
echo l
"---
let s = 'abc'
unlet s[0]
"---
unlet $NOSUCHVARX
"---
let l = [1, 2, 3]
let l[0] = 9 | let l[-1] = 8 | let l[1] += 5
echo l
"---
let l = [1, 2, 3]
let l[5] = 1
"---
let l = [1, 2, 3]
let l[-5] = 9
echo l
"---
let l = [1, 2, 3]
let l[-5:] = [7, 8, 9]
echo l
"---
let l = [1, 2, 3]
let l[:1] = [7, 8] | echo l
let l[1:] = [4] | echo l
"---
let l = [1, 2, 3]
let l[1:2] = [4]
echo l
"---
let l = [1, 2, 3]
let l[0:1] = [4, 5, 6]
echo l
"---
let l = [1, 2, 3]
let l[1:0] = []
echo l
"---
let l = [1, 2, 3]
let l[2:1] = [4]
"---
let l = [1, 2, 3]
let l[0:1] = 5
"---
let l = [1, 2, 3]
let l[0:1][0] = 5
"---
let l = [1, 2, 3]
let l[0:1] += [4, 5]
echo l
"---
let l = [[1, 2], [3]]
let l[0][1] = 5 | let l[1] += [6]
echo l
"---
let d = {'a': 1}
let d.b = 2 | let d['c'] = 3 | let d.a += 10
echo sort(keys(d)) d.a d.b d.c
"---
let d = {'a': 1}
let d.b += 2
"---
let d = {'a': {'b': 1}}
let d.a.b = 2 | let d.a.c = 3
echo d.a.b d.a.c
"---
let d = {'a': 1}
let d.x.y = 2
"---
let d = {'a': 1}
let d[1] = 'n' | echo d['1']
"---
let d = {'a': 1}
let d[[1]] = 2
"---
let d = {'a': 1}
let d.a.b = 2
"---
let s = 'abc'
let s[0] = 'x'
"---
let n = 5
let n.a = 1
"---
let nosuch[0] = 1
"---
let nosuch.a = 1
"---
let l = [1]
let l.a = 1
"---
let l = [1, 2]
let l[0]x = 1
"---
let l = [1, 2]
let l[0 = 1
"---
let l = [1, 2]
let l[0:1:2] = [1, 2]
"---
let d = {'a': 1}
let d[0:1] = [1]
"---
let l = [1, 2, 3]
let l[ : ] = [4, 5, 6]
echo l
"---
let l = [1, 2, 3]
let l[.1] = 1
"---
let d = {}
let d. = 1
"---
let [a, b] = [1, 2]
let [a, b] += [10, 20]
echo a b
"---
let [a, b] = [1, 2, 3]
"---
let [a, b, c] = [1, 2]
"---
let [a, b; c] = [1, 2, 3, 4]
echo a b c
"---
let [a, b; c] = [1, 2]
echo a b c
"---
let [a; b; c] = [1, 2, 3]
"---
let [a, b] = 5
"---
let [a, b = [1, 2]
"---
let [a b] = [1, 2]
"---
let [] = []
"---
let [a, [b, c]] = [1, [2, 3]]
"---
let l = [0, 0] | let [l[0], l[1]] = [3, 4]
echo l
"---
let d = {'x': 0} | let [d.x, d.y] = [5, 6]
echo d.x d.y
"---
let [a, b] = [1, 2] | let [a, b] = [b, a]
echo a b
"---
let [x, y] = [1, 2] | let [x, y] .= ['a', 'b']
echo x y
"---
let s = 'a' | let s += 1
echo s
"---
let s = 'a' | let s -= 'b'
echo s
"---
let n = 1 | let n .= 'x'
echo n
"---
let n = 5 | let n /= 0 | echo n
let n = 5 | let n %= 0 | echo n
"---
let n = 5 | let n += 1.5 | echo n
let n = 5 | let n %= 1.5
"---
let f = 1.5 | let f += 1 | echo f
let f *= 2 | echo f
let f .= 'x'
"---
let f = 1.5 | let f %= 2
"---
let n = 5 | let n += [1]
"---
let n = 5 | let n += {'a': 1}
"---
let l = [1] | let l += 3
"---
let l = [1] | let l -= [1]
"---
let n = 1 | let n .= v:true
"---
let n = 1 | let n += v:true | echo n
"---
let b = v:true | let b += 1
"---
let l = [1] | let m = l | let l += [2]
echo m
"---
let nosuch += 1
"---
let nosuch .= 'a'
"---
let $LETX = 'a' | let $LETX .= 'b' | echo $LETX
"---
let $LETX = 'a' | let $LETX += 'b'
"---
let $ = 1
"---
let @a = 'x' | let @a .= 'y' | echo @a
"---
let @a = 'x' | let @a += 'y'
"---
let @ab = 'x'
"---
let @- = 'x' | echo @-
"---
let &tabstop = 3 | let &tabstop += 2 | echo &tabstop
"---
let &tabstop .= 2
"---
let &nosuchopt = 2
"---
let [&tabstop, @a] = [5, 'q'] | echo &tabstop @a
"---
let [a, @@] = [1, 'q']
"---
let [a, b]x = [1, 2]
"---
let [a b] = [1, 2]
"---
let 1x = 1
"---
let x:y = 1
"---
let g:x = 1 | let g:['y'] = 2 | echo g:x g:y
"---
let g:['a b'] = 2
"---
let g:['1a'] = 2
"---
let g:[0] = 2 | echo g:['0']
"---
let v:['count'] = 1
"---
let v:['nosuch'] = 1
"---
let v:count[0] = 1
"---
let b:d = {} | let b:d.k = 1 | echo b:d
"---
let w:l = [1] | let w:l[0] = 2 | echo w:l
"---
let t:l = [1] | let t:l += [2] | echo t:l
"---
let a:x = 1
"---
let l:x = 1
echo l:x
"---
let s:x = 1 | let s:x += 1 | echo s:x
"---
let x = 1 | let x
"---
let x = {} | let x['a'] = 1 | let x
"---
let n{1} = 5 | echo n1
"---
let n = 'x' | let {n}1 = 2 | echo x1
"---
let n{} = 5
"---
let n{1 = 5
"---
let n{1}[0] = 5
"---
let l = [1] | let a{1} = l | let a1[0] = 9 | echo l
"---
let x = 1 " comment
echo x
"---
let x = [1, 2] | let x[0] = 3 | echo x
"---
let x = 1 | let y = x +
"---
let [a, b] = [1, 2] | echo a b | let [a, b] = [3, 4, 5] | echo a b
"---
let d = {'a': [1, 2]} | let d.a[1] = 5 | let d['a'][0] += 1 | echo d
"---
let d = {'a': [1, 2]} | let d.a[5] = 5
"---
let d = {} | let d.a.b.c = 1
"---
let d = {'a': 1} | let d.a[0] = 1
"---
let d = {'k': 1} | let d.k.. = 1
"---
let d = {'k': 1} | let d.k = 2 | let d.k ..= 'z' | echo d.k
"---
let @a = 'x' | echo @"
"---
let @" = 'y' | echo @a @"
"---
let @a = 'x' | let @A = 'z' | echo @a
"---
let @_ = 'x' | echo @_
"---
let @a = "l\n" | echo @a
"---
let @a = "l\r" | echo @a
"---
let @/ = 'pat' | echo @/
"---
let @a = [1]
"---
let $LETY = [1]
"---
let x = 1 | let x [0] = 1
"---
let d = {} | let d.a b = 1
"---
let x y = 1
"---
let x = 1 | let x
let y
"---
let l = [1] | let l[0]
let l[0] l[5]
"---
let l = [1] | let l[0] d.x
"---
let d = {'k': 1} | let d.k..
"---
let @ = 1
"---
let & = 1
"---
let &tabstop x = 1
"---
let [a, &tabstop] = [1, 'x'] | echo a
"---
let [a, &nosuch, b] = [1, 2, 3] | echo a exists('b')
"---
let [a, @@] = [1, 'q'] | echo a @@
"---
for [a, b] in [[1, 2], [3, 4]] | echo a b | endfor
"---
for [a, b; c] in [[1, 2, 3], [4, 5]] | echo a b c | endfor
"---
for [a, b] in [[1, 2, 3]] | endfor
"---
for l[0] in [1, 2] | endfor
"---
let l = [0] | for l[0] in [1, 2] | endfor | echo l
"---
let d = {} | for d.x in [1, 2] | endfor | echo d
"---
let x = 1 | let y = 2
unlet x y
echo exists('x') exists('y')
"---
unlet nosuch
echo 1
"---
unlet! nosuch
echo 1
"---
let x = 1
unlet nosuch x
echo exists('x')
"---
let x = 1
unlet nosuch | echo 'next'
"---
let x = 1
unlet x y z | echo 'next'
"---
unlet
"---
unlet x!
"---
let x = 1
unlet x x
echo 2
"---
let l = [1, 2, 3, 4]
unlet l[1:2] | echo l
unlet l[-1:] | echo l
unlet l[:] | echo l
"---
let l = [1, 2, 3, 4]
unlet l[1:9] | echo l
"---
let l = [1, 2, 3]
unlet l[5]
echo l
"---
let l = [1, 2, 3]
unlet l[-5]
echo l
"---
let l = [1, 2, 3]
unlet l[2:1]
"---
let l = [1, 2, 3]
unlet! l[5] | echo 'next'
echo l
"---
let d = {'a': 1, 'b': 2, 'c': {'d': 4}}
unlet d.a d['b'] d.c.d
echo d
"---
let d = {'a': 1}
unlet d.zz | echo 'next'
echo d
"---
let d = {'a': 1}
unlet! d.zz | echo 'next'
echo d
"---
let d = {'a': 1}
unlet d['zz'] | echo 'next'
"---
let d = {'a': 1}
unlet d.a.b
"---
let s = 'abc'
unlet s[0]
"---
let l = [1]
unlet l.x
"---
let l = [[1, 2], [3]]
unlet l[0][1] l[1]
echo l
"---
unlet v:count
"---
unlet v:nosuch
"---
unlet! v:count
echo 1
"---
unlet g:
"---
unlet 1
"---
unlet $
"---
let $UNLX = 1
unlet $UNLX | echo exists('$UNLX')
"---
unlet $UNLX1 $UNLX2
echo 1
"---
let x = 1
unlet x | let x = 2 | echo x
"---
let x = 1
unlet x" comment
echo exists('x')
"---
let x = 1
unlet x y| echo 'e'
"---
let n1 = 1 | let n = 1
unlet n{1}
echo exists('n1')
"---
let l = [1, 2, 3]
for i in l | unlet l[0] | echo i | endfor
"---
call add([1], 2)
echo 1
"---
call
"---
call 1
"---
call nosuch()
"---
call abs
"---
call abs (-1)
echo 'ok'
"---
call abs(-1) x
"---
call abs(-1) | echo 'next'
"---
call abs(-1)" c
echo 'x'
"---
call abs()
"---
call abs(1, 2)
"---
call abs(1
"---
call g:abs(-1)
echo 'ok'
"---
call a:abs(-1)
"---
call x:abs(-1)
"---
let d = {} | call d.f()
"---
let l = [1, 2] | call l[0]()
"---
let l = [1, 2, 3]
2,3call add(l, line('.'))
echo l
"---
call split('a b')[0]
echo 1
"---
call split('a b')[5]
"---
call [1, 2][0] + 1
"---
call add([], 1)->len()
echo 1
"---
call 'abc'->len()
"---
exe "normal! ia\<CR>b\<CR>c"
let l = []
%call add(l, line('.') . getline('.'))
echo l line('.')
"---
exe "normal! ia\<CR>b"
let l = []
5call add(l, 1)
echo l
"---
exe "normal! ia\<CR>b"
let l = []
2,1call add(l, 1)
echo l
"---
exe "normal! ia\<CR>b\<CR>c"
let l = []
2,3call add(l, line('.')) | echo l
"---
let l:
"---
let a:
"---
let x:
"---
let g:a = 1 | let b:x = 2
let g: w:
"---
let v:count = 3
let v:count1 v:t_dict
"---
let s:q = 5
let s:
"---
let w:y = 3
let w:
let t:
