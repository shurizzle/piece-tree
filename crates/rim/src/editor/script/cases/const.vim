const x = 1
echo x
"---
const x = 1
let x = 2
echo x
"---
const x = 1
unlet x
echo exists('x')
"---
const x = 1
let x += 1
echo x
"---
const x = 1
const x = 2
echo x
"---
const x = 1
lockvar x
echo x
"---
const x = 1
unlockvar x
let x = 2
echo x
"---
const x = 1
unlockvar! x
let x = 2
echo x
"---
const x = 1
echo islocked('x')
"---
let x = 1
const x = 2
echo x
"---
const x = 'a'
let x .= 'b'
echo x
"---
const x = 1.5
let x = 2
echo x
"---
const x = v:true
echo x
"---
const x = v:null
echo x
"---
const x = 1
let y = x
let y = 2
echo y
"---
const x = 1 | echo x
"---
const x = 1
echo exists('x')
"---
if 0
const x = 1
endif
echo exists('x')
"---
if 1
const x = 1
endif
echo x
"---
const x = 1
const y = x + 1
echo y
"---
const x=1
echo x
"---
const x =1
echo x
"---
const x= 1
echo x
"---
const    x    =    1
echo x
"---
cons x = 1
echo x
"---
conste x = 1
echo x
"---
consta x = 1
echo x
"---
con x = 1
echo 1
"---
const x
echo 1
"---
const x = 1
const x
echo 1
"---
const x = 1
const x y
echo 1
"---
const x = 1
const [
echo 1
"---
const x = 
echo 1
"---
const = 1
echo 1
"---
const 1x = 1
echo 1
"---
const x y = 1
echo 1
"---
const x = 1 2
echo 1
"---
const x = (
echo 1
"---
const x = nosuch
echo exists('x')
"---
const x = 1 |
echo x
"---
const x = 1 | const y = 2
echo x y
"---
const x = 1 " comment
echo x
"---
const l = [1, [2]]
echo l
echo islocked('l') islocked('l[0]') islocked('l[1]')
"---
const l = [1, [2]]
call add(l, 3)
echo l
"---
const l = [1, [2]]
let l[0] = 5
echo l
"---
const l = [1, [2]]
let l[1][0] = 5
echo l
"---
const l = [1, [2]]
call add(l[1], 3)
echo l
"---
const l = [1, [2]]
unlet l[0]
echo l
"---
const l = [1, [2]]
let l = []
echo l
"---
const l = [1, [2]]
let l += [3]
echo l
"---
const l = [1, [2]]
call sort(l)
echo l
"---
const l = [3, 1]
call sort(l)
echo l
"---
const l = [3, 1]
call reverse(l)
echo l
"---
const l = [3, 1]
call remove(l, 0)
echo l
"---
const l = [3, 1]
call insert(l, 0)
echo l
"---
const l = [3, 1]
call extend(l, [0])
echo l
"---
const l = [3, 1]
call map(l, 'v:val')
echo l
"---
const l = [3, 1]
call filter(l, 1)
echo l
"---
const l = [3, 1]
let m = copy(l)
call add(m, 0)
echo m islocked('m')
"---
const l = [3, 1]
let m = deepcopy(l)
call add(m, 0)
echo m islocked('m')
"---
const l = [3, 1]
let m = l
call add(m, 0)
echo m
"---
const l = []
call add(l, 1)
"---
const l = [[], {}]
echo islocked('l[0]') islocked('l[1]')
"---
const l = [[[1]]]
echo islocked('l') islocked('l[0]') islocked('l[0][0]')
"---
const d = {'a': 1, 'b': {'c': 2}}
echo islocked('d') islocked('d.a') islocked('d.b') islocked('d.b.c')
"---
const d = {'a': 1, 'b': {'c': 2}}
let d.a = 5
echo d
"---
const d = {'a': 1, 'b': {'c': 2}}
let d.b.c = 5
echo d
"---
const d = {'a': 1, 'b': {'c': 2}}
let d.n = 5
echo d
"---
const d = {'a': 1, 'b': {'c': 2}}
unlet d.a
echo d
"---
const d = {'a': 1, 'b': {'c': 2}}
call remove(d, 'a')
echo d
"---
const d = {'a': 1, 'b': {'c': 2}}
call extend(d, {'z': 1})
echo d
"---
const d = {'a': 1, 'b': {'c': 2}}
let d = {}
echo d
"---
const d = {}
let d.a = 1
"---
const d = {'a': [1]}
call add(d.a, 2)
echo d
"---
const d = {'a': [1]}
let d.a[0] = 2
echo d
"---
const d = {'f': {-> 1}}
echo d.f()
"---
const l = [function('add')]
echo islocked('l[0]')
"---
let a = [1]
const b = a
call add(a, 2)
echo a b islocked('a') islocked('b')
"---
let a = [1]
const b = a
call add(b, 2)
echo a b
"---
let a = [1]
const b = a
let b = 1
"---
let a = [1]
const b = a
let a = 1
echo b islocked('b')
"---
let a = [1]
const b = copy(a)
call add(a, 2)
call add(b, 2)
"---
let a = [1]
const b = [a]
call add(a, 2)
echo b islocked('a') islocked('b') islocked('b[0]')
"---
let a = [1]
const b = [a]
call add(b[0], 2)
echo b
"---
let a = [1]
const b = [a]
call add(b, 2)
"---
let a = [1]
const b = {'k': a}
call add(a, 2)
echo b islocked('b.k')
"---
let a = [1]
const b = {'k': a}
call add(b.k, 2)
echo b
"---
let a = [1]
const b = [a, a]
call add(a, 2)
echo b islocked('b[0]')
"---
let a = [1]
const b = a
const c = a
echo islocked('a') islocked('b') islocked('c')
"---
const a = [1]
const b = a
call add(b, 2)
"---
const a = [1]
let b = a
call add(b, 2)
"---
const a = [1]
const b = [a]
call add(a, 2)
"---
const a = [1]
const b = [a]
echo islocked('b') islocked('b[0]')
"---
const a = [1]
let b = [a]
call add(b, 2)
echo b
"---
const a = [1]
let b = [a]
call add(b[0], 2)
"---
let l = [1]
let m = [l]
const n = m
call add(m, 1)
echo n
"---
let l = [1]
let m = [l]
const n = m
call add(m[0], 1)
echo n
"---
const l = [1]
let l:x = 1
echo 1
"---
let x = [[1]]
const y = x[0]
call add(y, 2)
echo x
"---
let x = [[1]]
const y = x[0]
call add(x[0], 2)
echo x
"---
let x = {'a': [1]}
const y = x.a
call add(y, 2)
echo x
"---
const l = range(3)
call add(l, 1)
"---
const l = split('a b', ' ')
call add(l, 1)
"---
const l = [1] + [2]
call add(l, 1)
"---
const l = []
let l2 = l
call add(l2, 1)
"---
const l = 'abc'
let l = 1
"---
const F = function('add')
echo F([1], 2)
"---
const F = function('add')
let F = 1
"---
const f = function('add')
echo 1
"---
const F = {-> 1}
echo F()
"---
const F = {-> 1}
let F = 1
"---
const F = function('add', [[]])
echo F(2)
"---
const F = function('add', [[]])
echo islocked('F')
"---
const [a, b] = [1, 2]
echo a b
"---
const [a, b] = [1, 2]
let a = 3
echo a
"---
const [a, b] = [1, 2]
let b = 3
echo b
"---
const [a; r] = [1, 2, 3]
echo a r islocked('r')
"---
const [a; r] = [1, 2, 3]
call add(r, 1)
echo r
"---
const [a, b] = [[1], [2]]
call add(a, 1)
echo a b islocked('a') islocked('b')
"---
const [a, b] = [[1], [2]]
let a[0] = 5
echo a
"---
const [a, b] = [{'x': 1}, 2]
let a.x = 5
echo a
"---
const [a, b] = [1]
echo 1
"---
const [a, b] = [1, 2, 3]
echo 1
"---
const [a, b] = 1
echo 1
"---
const [a, b] = 'ab'
echo 1
"---
const [a, b] = {}
echo 1
"---
const [a, b; c] = [1]
echo 1
"---
const [a, b; c] = [1, 2]
echo c
"---
const [a, a] = [1, 2]
echo a
"---
let a = 0
const [a, b] = [1, 2]
echo a
"---
let b = 0
const [a, b] = [1, 2]
echo a exists('b')
"---
const [a, b] = [1, 2]
const [a, b] = [3, 4]
echo a
"---
const [a, b] = [1, 2]
unlet a
echo exists('a')
"---
const [a, [b]] = [1, [2]]
echo 1
"---
const [a b] = [1, 2]
echo 1
"---
const [a,b]=[1,2]
echo a b
"---
const [a, b] = [1, 2] | echo a
"---
const [ a , b ] = [ 1 , 2 ]
echo a b
"---
const [g:a, b] = [1, 2]
echo g:a b
"---
const [a, $B] = [1, 2]
echo 1
"---
const [a, &tw] = [1, 2]
echo 1
"---
const [a, @r] = [1, 2]
echo 1
"---
const [a, l[0]] = [1, 2]
echo 1
"---
let l = [0]
const [a, l[0]] = [1, 2]
echo a l
"---
let d = {}
const [a, d.k] = [1, 2]
echo a d
"---
const [a, b] = [1, 2]
const [c; d] = [b]
echo c d
"---
const $X = 1
echo 1
"---
const &g:tw = 1
echo 1
"---
const &l:tw = 1
echo 1
"---
const @a = 'x'
echo @a
"---
const @@ = 'x'
echo 1
"---
const $ = 1
echo 1
"---
const & = 1
echo 1
"---
const @ = 1
echo 1
"---
let l = [1, 2]
const l[0] = 5
echo l
"---
let l = [1, 2]
const l[0:1] = [5, 6]
echo l
"---
let l = [1, 2]
const l[0:] = [5, 6]
echo l
"---
let d = {'a': 1}
const d.a = 5
echo d
"---
let d = {'a': 1}
const d.n = 5
echo d
"---
let d = {'a': 1}
const d['n'] = 5
echo d
"---
const x[0] = 1
echo 1
"---
const x.a = 1
echo 1
"---
let l = [1]
const l[5] = 1
echo l
"---
let l = [1]
lockvar l
const l[0] = 1
echo l
"---
let d = {}
lockvar d
const d.k = 1
echo d
"---
let l = [1, 2]
lockvar l[0]
const l[0] = 5
"---
let l = [1, 2]
lockvar l[0]
const l[0:1] = [5, 6]
"---
let l = [1, 2]
const l[0] += 5
echo l
"---
let l = [1, 2]
const l += [5]
echo l
"---
const x = 1
const x += 1
"---
const x = 1
const x .= 'a'
"---
let x = 1
const x += 1
echo x
"---
let x = 1
const x -= 1
echo x
"---
const x ..= 1
echo 1
"---
const nosuch += 1
echo 1
"---
const g:x = 1
let g:x = 2
echo g:x
"---
const g:x = 1
unlet g:x
echo exists('g:x')
"---
const g:x = 1
const g:x = 2
"---
const g:x = 1
echo g:x
"---
const g:l = [1]
call add(g:l, 2)
echo g:l
"---
const s:x = 1
let s:x = 2
echo s:x
"---
const s:l = [1]
call add(s:l, 2)
"---
const b:x = 1
let b:x = 2
echo b:x
"---
const w:x = 1
let w:x = 2
echo w:x
"---
const t:x = 1
let t:x = 2
echo t:x
"---
const v:x = 1
echo 1
"---
const v:count = 1
echo 1
"---
const v:errmsg = 'a'
echo v:errmsg
"---
const a:x = 1
echo 1
"---
const l:x = 1
echo l:x
"---
const g: = 1
echo 1
"---
const x:y = 1
echo 1
"---
const x#y = 1
echo 1
"---
const {'x'} = 1
echo x
"---
let n = 'x'
const {n} = 1
echo x
"---
let n = 'x'
const {n} = 1
const {n} = 2
echo x
"---
const {nosuch} = 1
echo 1
"---
const {} = 1
echo 1
"---
const a{ = 1
echo 1
"---
let x = 1
unlet x
const x = 2
echo x
"---
const x = 1
unlet! x
const x = 2
echo x
"---
const x = 1
unlockvar x
unlet x
const x = 2
echo x
"---
silent! const x = 1
silent! const x = 2
echo x
"---
silent! const $X = 1
echo 1
"---
try | const x = 1 | const x = 2 | catch | echo v:exception | endtry
"---
try | const x = 1 | let x = 2 | catch | echo v:exception | endtry
"---
try | const $X = 1 | catch | echo v:exception | endtry
"---
try | const l = [1] | call add(l, 2) | catch | echo v:exception | endtry
"---
try | const l = [1] | let l[0] = 2 | catch | echo v:exception | endtry
"---
try | const l = [1] | unlet l[0] | catch | echo v:exception | endtry
"---
const x = 1
for x in [1, 2] | echo x | endfor
echo x
"---
for i in [1, 2]
const x = i
echo x
endfor
"---
for i in [1, 2]
const x = i
let x = 3
endfor
echo x
"---
let i = 0
while i < 2
const x = i
let i += 1
endwhile
echo x
"---
for [a, b] in [[1, 2]]
const c = a
echo c b
endfor
"---
const x = 1
execute 'const y = 2'
echo x y
"---
execute 'const x = 1' | execute 'const x = 2'
echo x
"---
execute 'const x = 1' | echo x
"---
const x = eval('1 + 1')
echo x
"---
const x = 1
call execute('let x = 2')
echo x
"---
const x = 1
echo execute('const x = 2')
"---
const x =<< END
a
b
END
echo x islocked('x')
"---
const x =<< END
a
b
END
call add(x, 'c')
"---
const x =<< END
a
b
END
let x = 1
"---
const x =<< trim END
  a
   b
  END
echo x
"---
let v = 3
const x =<< eval END
{v}
END
echo x
"---
const x =<< END
END
echo x islocked('x')
"---
const [a, b] =<< END
1
2
END
echo a b
"---
const [a; b] =<< END
1
2
3
END
echo a b
"---
const x =<< END
a
END
const x =<< END
b
END
echo x
"---
let x = 1
const x =<< END
a
END
echo x
"---
const &tw =<< END
a
END
echo 1
"---
const $X =<< END
a
END
echo 1
"---
const @a =<< END
a
END
echo 1
"---
let l = []
const l[0] =<< END
a
END
echo l
"---
const x =<< END
a
"---
const x =<< 
echo 1
"---
const x +=<< END
a
END
"---
if 0
const x =<< END
a
END
endif
echo exists('x')
"---
function! F()
const x = 1
echo x
endfunction
call F()
"---
function! F()
const x = 1
let x = 2
endfunction
call F()
"---
function! F()
const x = 1
const x = 2
endfunction
call F()
"---
function! F()
const l = [1]
call add(l, 2)
endfunction
call F()
"---
function! F()
const l = [1]
return l
endfunction
let r = F()
call add(r, 2)
echo r islocked('r')
"---
function! F()
const l = [1]
return copy(l)
endfunction
let r = F()
call add(r, 2)
echo r
"---
function! F()
const x = 1
endfunction
call F()
call F()
echo 'ok'
"---
function! F(a)
const a:b = 1
endfunction
call F(1)
"---
function! F(a)
const x = a:a
endfunction
call F([1])
"---
function! F(a)
const x = a:a
call add(x, 1)
endfunction
call F([1])
"---
function! F(a)
const x = a:a
call add(a:a, 1)
endfunction
call F([1])
"---
function! F(...)
const x = a:000
call add(x, 1)
endfunction
call F(1)
"---
function! F(...)
const x = a:000
echo islocked('x')
endfunction
call F(1)
"---
function! F()
const l:x = 1
let l:x = 2
endfunction
call F()
"---
function! F()
const x = 1
unlet x
endfunction
call F()
"---
function! F()
const x = 1
let g:y = x
endfunction
call F()
echo g:y
"---
function! F()
const x = 1
return {-> x}
endfunction
echo F()()
"---
function! F()
const l = [1]
return {-> add(l, 2)}
endfunction
echo F()()
"---
function! F()
const x = 1
return {-> execute('let x = 2')}
endfunction
echo F()()
"---
function! F()
const x = 1
function! G()
let x = 2
endfunction
call G()
endfunction
call F()
"---
function! F() abort
const x = 1
const x = 2
echo 'after'
endfunction
call F()
"---
function! F()
const x = 1
const x = 2
echo 'after'
endfunction
call F()
"---
let d = {}
function! d.f()
const x = 1
let self.a = x
endfunction
call d.f()
echo d
"---
let d = {}
function! d.f()
const self = 1
endfunction
call d.f()
"---
const x = 1
function! F()
const x = 2
echo x
endfunction
call F()
echo x
"---
const x = 1
function! F()
let x = 2
endfunction
call F()
"---
const x = 1
function! F()
echo x
endfunction
call F()
"---
function! F()
const x = 1
echo x
endfunction
delfunction F
function! F()
const x = 2
echo x
endfunction
call F()
"---
function! F()
const l = [[1]]
let m = l[0]
call add(m, 2)
endfunction
call F()
"---
function! F()
const x = 1
const y = x
let y = 2
endfunction
call F()
"---
const x = 1
echo map([1], 'x')
"---
const x = 1
echo filter([1], 'x')
"---
const x = 1
let l = [x]
let l[0] = 2
echo l
"---
const l = [1]
let m = [l]
let m[0][0] = 2
"---
const l = [1]
let m = {'a': l}
let m.a[0] = 2
"---
const l = [1]
echo l + [2]
"---
const l = [1]
let m = l + [2]
call add(m, 3)
echo m
"---
const l = [1]
let m = l[:]
call add(m, 3)
echo m
"---
const l = [1]
let m = l[0:0]
call add(m, 3)
echo m
"---
const l = [[1]]
let m = l[0:0]
call add(m[0], 3)
echo m
"---
const d = {'a': 1}
let e = d
let e.b = 2
"---
const d = {'a': 1}
let e = copy(d)
let e.b = 2
echo e
"---
const d = {'a': 1}
let e = extend(copy(d), {'b': 2})
echo e
"---
const d = {'a': 1}
let e = extend({}, d)
let e.a = 2
echo e
"---
const l = [3, 1, 2]
echo sort(copy(l))
"---
const l = [3, 1, 2]
echo sort(l)
"---
const l = [3, 1, 2]
echo reverse(copy(l))
"---
const l = [3, 1, 2]
echo uniq(copy(l))
"---
const l = [3, 1, 2]
echo flatten(copy(l))
"---
const l = [[3], 1, 2]
echo flatten(l)
"---
const l = [3, 1, 2]
echo islocked('l') islocked('l[0]') islocked('l[0:1]')
"---
const l = [3, 1, 2]
echo islocked('l[5]')
"---
const l = [3, 1, 2]
echo string(l) len(l) l[0]
"---
const s = 'abc'
let t = s
let t = 'd'
echo s t
"---
const x = 1
let y = x
let y += 1
echo x y
"---
const n = 5
let l = repeat([0], n)
let l[0] = 1
echo l

"---
let l = [1]
lockvar l
unlet l[0] | echo 'next'
"---
let l = [1]
lockvar l
try | unlet l[0] | catch | echo v:exception | endtry
"---
let d = {'a': 1}
lockvar d
try | unlet d.a | catch | echo v:exception | endtry
"---
let l = [1]
lockvar l
try | unlet l[0:] | catch | echo v:exception | endtry
