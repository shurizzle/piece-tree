let x = 1
lockvar x
let x = 2
echo x
"---
let x = 1
lockvar x
unlet x
echo exists('x')
"---
let x = 1
lockvar x
let x += 1
echo x
"---
let x = 1
lockvar x
unlockvar x
let x = 2
echo x
"---
let x = 1
lockvar! x
let x = 2
"---
lockvar nosuch
echo 1
"---
unlockvar nosuch
echo 1
"---
lockvar
echo 1
"---
let x = 1
lockvar x y
echo 1
"---
let x = 1
let y = 2
lockvar x y
let y = 3
let x = 3
"---
let x = 1
lockvar $HOME
echo 1
"---
lockvar $
echo 1
"---
lockvar! v:count
echo 1
"---
lockvar v:count
echo 1
"---
lockvar v:errmsg
echo 1
"---
let g:x = 1
lockvar g:x
let g:x = 2
"---
let g:x = 1
lockvar g:x
unlet g:x
"---
let g:x = 1
lockvar g:x
let d = g:
unlet g:x
"---
let b:x = 1
lockvar b:x
let b:x = 2
"---
let w:x = 1
lockvar w:x
let w:x = 2
"---
let t:x = 1
lockvar t:x
let t:x = 2
"---
let l = [1, [2, 3]]
lockvar l
let l = []
echo l
"---
let l = [1, [2, 3]]
lockvar l
call add(l, 4)
echo l
"---
let l = [1, [2, 3]]
lockvar l
let l[0] = 5
echo l
"---
let l = [1, [2, 3]]
lockvar l
let l[1][0] = 5
echo l
"---
let l = [1, [2, 3]]
lockvar 1 l
let l[0] = 5
echo l
"---
let l = [1, [2, 3]]
lockvar 2 l
let l[0] = 5
echo l
"---
let l = [1, [2, 3]]
lockvar 2 l
let l[1][0] = 5
echo l
"---
let l = [1, [2, 3]]
lockvar 3 l
let l[1][0] = 5
echo l
"---
let l = [1, [2, 3]]
lockvar! l
let l[1][0] = 5
echo l
"---
let l = [1, [2, 3]]
lockvar 0 l
let l[0] = 5
let l = 1
echo l
"---
let l = [1, 2, 3]
lockvar l
unlet l[0]
echo l
"---
let l = [1, 2, 3]
lockvar l
unlet l[0:1]
echo l
"---
let l = [1, 2, 3]
lockvar 1 l
unlet l[0]
echo l
"---
let l = [1, 2, 3]
lockvar 1 l
let l[0] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l[1]
let l[1] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l[1]
let l[0] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l[1]
let l[0:1] = [8, 9]
echo l
"---
let l = [1, 2, 3]
lockvar l[0:1]
let l[0] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l[0:1]
let l[1] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l[0:1]
let l[2] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l[0:]
let l[2] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l[1]
unlockvar l[1]
let l[1] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l
unlockvar l
let l[1] = 9
let l = 4
echo l
"---
let l = [1, 2, 3]
lockvar l
unlockvar 1 l
let l[1] = 9
echo l
"---
let l = [1, 2, 3]
lockvar l
let l += [4]
echo l
"---
let l = [1, 2, 3]
lockvar 1 l
let l += [4]
echo l
"---
let l = [1, 2, 3]
lockvar 0 l
let l += [4]
echo l
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d
let d.a = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d
let d.n = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d
unlet d.a
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar 1 d
let d.a = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar 1 d
let d.n = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar 2 d
let d.a = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar 2 d
let d.b.c = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar 3 d
let d.b.c = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d.a
let d.a = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d.a
let d.b = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d.a
unlet d.a
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d['a']
let d['a'] = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d.b
let d.b.c = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d.b
let d.b = 5
echo d
"---
let d = {'a': 1, 'b': {'c': 2}}
lockvar d.n
echo 1
"---
let d = {'a': 1}
lockvar d.
echo 1
"---
let d = {'a': 1}
lockvar d
unlockvar d
let d.a = 2
echo d
"---
let d = {'a': 1}
lockvar d
let d.a += 2
echo d
"---
let d = {'a': 1}
lockvar d
let d = {}
echo d
"---
let d = {'a': 1}
lockvar d
let d.a .= 'x'
echo d
"---
let x = 1
lockvar 99999999999 x
let x = 2
"---
let x = 1
lockvar -1 x
echo 1
"---
let x = 1
lockvar 1x
echo 1
"---
let x = 1 | let y = 2
lockvar x | echo islocked('x')
"---
let l = [1]
lockvar l
echo l
"---
let l = [1]
lockvar l
let m = l
let m[0] = 2
echo m
"---
let l = [[1]]
let l[0][0] = 2
lockvar 2 l
let a = l[0]
let a[0] = 3
echo l
"---
let l = [1]
let l:x = 1
"---
function! F(a)
lockvar a:a
endfunction
call F(1)
"---
function! F(a)
let a:a = 2
endfunction
call F(1)
"---
function! F(a)
unlet a:a
endfunction
call F(1)
"---
function! F(...)
let a:000[0] = 2
endfunction
call F(1)
"---
function! F(...)
call add(a:000, 2)
endfunction
call F(1)
"---
function! F()
let l:x = 1
lockvar l:x
let l:x = 2
endfunction
call F()
"---
function! F()
let x = 1
lockvar x
let x = 2
endfunction
call F()
"---
function! F()
let x = 1
lockvar x
endfunction
call F()
echo 'ok'
"---
let d = {}
function! d.f() dict
let self.a = 1
endfunction
call d.f()
echo d
"---
let d = {}
function! d.f() dict
let self = 1
endfunction
call d.f()
"---
let d = {}
lockvar d
function! d.f() dict
endfunction
"---
let d = {'f': 1}
lockvar d.f
function! d.f() dict
endfunction
"---
let d = {'f': 1}
lockvar d
function! d.f() dict
endfunction
"---
let l = [1]
lockvar l
for i in l | let i = 2 | endfor
echo l
"---
let l = [1]
lockvar l
for [a, b] in [[1,2]] | echo a b | endfor
"---
let x = 1
lockvar x
for x in [1] | endfor
"---
let x = 1
lockvar x
let [x, y] = [3, 4]
echo x
"---
let x = 1
lockvar x
let [y, x] = [3, 4]
echo y
