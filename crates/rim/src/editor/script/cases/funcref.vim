let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo D
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F P D
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo type(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo type(P)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo empty(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo empty(P)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo string(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo string(P)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo string(D)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo [F]
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo {'f': F}
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo [P, D]
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F == function('abs')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F == P
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P == P
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P == function('abs', [1])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo D == function('abs', {'a': 1})
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo D == function('abs', {'a': 2})
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F is F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F is function('abs')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P is P
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P is function('abs', [1])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F is P
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F != P
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F isnot F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F == 1
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo 1 == F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F == 'abs'
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F < F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F > P
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F =~ 'a'
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F + 1
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F . 'x'
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo 'x' . F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F . F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo len(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F ? 1 : 2
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo !F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F && 1
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F || 1
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo -F
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo copy(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo deepcopy(P)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo copy(D)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F()
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P()
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F(-3)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P(5)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call(F, [-3])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call(P, [])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call(D, [-4])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call('abs', [-2])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call('nosuch', [])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call('', [])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call(F, 1)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call(F, [1], 1)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call(F, [1], {})
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo call(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(F, 'name')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(F, 'func')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(F, 'dict')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(F, 'args')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(P, 'name')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(P, 'args')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(P, 'dict')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(D, 'dict')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(P, 'func')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(F, 'nosuch')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(F, 'dict', 'dflt')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(F, 'arity')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(P, 'arity')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(function('strlen'), 'arity')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo get(function('printf'), 'arity')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo str2nr(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo float2nr(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo [1] + [F]
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo has_key(F, 'a')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo keys(F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo sort([F, F])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo max([F])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo min([P])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F is function('abs')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo string(function('strlen'))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo function('strlen')('abc')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo function('strlen', ['abc'])()
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo function('printf', ['%s-%s'])('a', 'b')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo function('printf', ['%s-%s'], {})('a', 'b')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo printf('%s', F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo printf('%d', F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F->string()
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo F->call([-1])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo P->call([])
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo eval(string(F))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo eval(string(P))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo 'abs'->function()
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo [function('abs')]->map('v:val(-5)')
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo map([1, -2], F)
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo filter([1, 0, 2], function('empty'))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo sort([3, 1, 2], function('abs'))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo map([-1, -2], function('abs', []))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo map([[1, 2], [3, 4]], function('add'))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo map({'a': 1}, function('printf', ['%s=%s']))
"---
let F = function('abs')
let P = function('abs', [1])
let D = function('abs', {'a': 1})
echo filter({'a': 1, 'b': 0}, function('printf', ['%s']))
"---
echo function('abs')
"---
echo function('abs', [1])
"---
echo funcref('abs')
"---
echo function('nosuch')
"---
echo function('')
"---
echo function(1)
"---
echo function('abs', 1)
"---
echo function('abs', [1], 1)
"---
echo function('abs', [1], {}, 4)
"---
echo function('abs', {})
"---
echo function('abs', [])
"---
echo function('Nosuch')
"---
echo function('s:x')
"---
echo function('<SID>x')
"---
echo function('abs foo')
"---
echo function(' abs')
"---
echo function('a.b')
"---
echo function([])
"---
echo function({})
"---
echo function()
"---
echo function('abs', [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21])
"---
let g = function('abs')
"---
let G = function('abs')
let G = 1
let G = function('abs')
echo G
"---
let w:G = function('abs')
let b:G = function('abs')
let t:G = function('abs')
let s:G = function('abs')
let g:G = function('abs')
echo w:G b:G t:G s:G g:G
"---
let w:g = function('abs')
let b:g = function('abs')
let t:g = function('abs')
let s:g = function('abs')
echo w:g b:g t:g s:g
"---
let g:g = function('abs')
"---
let v:errmsg = function('abs')
"---
function! Bar()
endfunction
let Bar = function('abs')
"---
function! Bar()
endfunction
let Bar = 1
"---
let Foo = function('Foo')
"---
let Foo = 1
function! Foo()
endfunction
"---
let Foo = function('abs')
let Foo += 1
"---
let Foo = function('abs')
let Foo .= 'x'
"---
let Foo = function('abs')
let Foo = Foo
echo Foo
"---
let Foo = function('abs')
unlet Foo
echo exists('Foo')
"---
let Foo = function('abs', [1])
let Foo
"---
let Foo = function('abs', {'a': 1})
let Foo
"---
let Foo = function('abs')
echo Foo(-3) Foo(-4)
"---
let Foo = function('abs')
call Foo(-3)
"---
let Foo = function('abs')
call Foo()
"---
let Foo = function('abs')
echo -3->Foo()
"---
let Foo = function('abs')
echo Foo (-3)
"---
let Foo = function('abs')
echo exists('*Foo') exists('*abs')
"---
let l = [function('abs')]
echo l[0](-3)
"---
let l = [function('abs')]
echo l[0] (-3)
"---
let d = {'f': function('abs')}
echo d.f(-3)
"---
let d = {'f': function('abs')}
echo d['f'](-3)
"---
echo function('abs')(-3)
"---
echo function('abs')(-3)(1)
"---
echo 1(2)
"---
echo 'abs'(-3)
"---
echo [1](2)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let F = function('Add')
echo F(1, 2) F
echo string(F)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let P = function('Add', [10])
echo P(1) P
echo P(1, 2)
echo P()
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let P = function('Add', [10, 5])
echo P() P(1)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let P = function('Add', [1])
let Q = function(P, [2])
echo Q() string(Q)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let R = funcref('Add')
echo R(1, 2) R string(R)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let R = funcref('Add')
function! Add(a, b)
  return a:a * a:b
endfunction
echo R(3, 4) function('Add')(3, 4)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let F = function('Add')
delfunction Add
echo F(1, 2)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let R = funcref('Add')
delfunction Add
echo R(1, 2)
"---
function! Add(a, b)
  return a:a + a:b
endfunction
let F = function('Add')
function! Add(a, b)
  return a:a * a:b
endfunction
echo F(3, 4)
"---
function! s:Loc(x)
  return a:x * 2
endfunction
let F = function('s:Loc')
echo F(3) F
let G = function('<SID>Loc')
echo G(4) string(G)
"---
function! s:Loc(x)
  return a:x * 2
endfunction
let F = function('s:Loc', [5])
echo F()
"---
function! s:Loc(x)
  return a:x * 2
endfunction
let g:F = function('s:Loc')
function! Other()
  return g:F(7)
endfunction
echo Other()
"---
function! Foo()
  return 1
endfunction
echo function('Foo')
echo function('Foo') == function('Foo')
echo function('Foo') is function('Foo')
"---
function! Foo()
  return 'foo'
endfunction
let R = funcref('Foo')
let R2 = funcref('Foo')
echo R == R2 R is R2 R is R
"---
function! Foo()
  return 'foo'
endfunction
echo funcref('Foo') == function('Foo')
"---
function! Foo(...)
  return a:000
endfunction
let P = function('Foo', [1, 2])
echo P(3, 4) P()
"---
function! Foo(a, b = 2, ...)
  return [a:a, a:b, a:000]
endfunction
echo function('Foo')(1) function('Foo', [1, 3])(4)
"---
function! Foo(a, b)
  return a:a
endfunction
echo function('Foo')(1)
"---
function! Foo(a)
  return a:a
endfunction
echo function('Foo', [1, 2])()
"---
function! Foo() dict
  return 1
endfunction
echo function('Foo')()
"---
function! Foo() dict
  return self
endfunction
echo function('Foo', {'a': 1})()
"---
function! Foo() dict
  return self.a
endfunction
let d = {'a': 7}
echo call('Foo', [], d)
"---
function! Foo(x) dict
  return self.a + a:x
endfunction
echo call('Foo', [1], {'a': 7})
echo call(function('Foo', [2]), [], {'a': 7})
"---
function! Foo(x)
  return exists('l:self') ? self : 'noself'
endfunction
echo call('Foo', [1], {'a': 7}) function('Foo', [1], {'b': 1})()
"---
function! Foo(x)
  let self.x = a:x
endfunction
let d = {}
call call('Foo', [4], d)
echo d
"---
function! Foo(x)
  let self = 1
endfunction
call call('Foo', [4], {})
"---
function! Cmp(a, b)
  return a:a - a:b
endfunction
echo sort([3, 1, 2], function('Cmp')) sort([3, 1, 2], function('Cmp', []))
"---
function! Cmp(a, b)
  return a:b - a:a
endfunction
echo sort([3, 1, 2], function('Cmp'))
"---
function! Cmp(x, a, b)
  return a:x * (a:a - a:b)
endfunction
echo sort([3, 1, 2], function('Cmp', [-1]))
"---
function! Cmp(a, b) dict
  return self.dir * (a:a - a:b)
endfunction
echo sort([3, 1, 2], function('Cmp'), {'dir': -1})
"---
function! Cmp(a, b)
  return a:a - a:b
endfunction
echo uniq(sort([3, 1, 3, 2], function('Cmp')), function('Cmp'))
"---
function! Cmp(a, b)
  echo nosuch
endfunction
echo sort([3, 1, 2], function('Cmp'))
"---
function! Cmp(a)
  return 0
endfunction
echo sort([3, 1, 2], function('Cmp'))
"---
function! Dbl(k, v)
  return a:v * 2
endfunction
echo map([1, 2, 3], function('Dbl')) map({'a': 1}, function('Dbl'))
"---
function! Odd(k, v)
  return a:v % 2
endfunction
echo filter([1, 2, 3], function('Odd')) filter({'a': 1, 'b': 2}, function('Odd'))
"---
function! Key(k, v)
  return a:k
endfunction
echo map([5, 6, 7], function('Key')) map({'x': 1}, function('Key'))
"---
function! Wrong(v)
  return a:v
endfunction
echo map([5, 6, 7], function('Wrong'))
"---
function! Sum(acc, k, v)
  call add(a:acc, a:v)
  return a:v
endfunction
let acc = []
call map([1, 2, 3], function('Sum', [acc]))
echo acc
"---
function! Show(k, v)
  echo a:k a:v
endfunction
call foreach([4, 5], function('Show'))
call foreach({'a': 1}, function('Show'))
"---
function! Str(k, v)
  return a:v . '!'
endfunction
echo map('abc', function('Str'))
"---
function! Foo()
  return 1
endfunction
let F = function('Foo')
echo F() F(1)
"---
function! Foo()
  echo nosuch
endfunction
let F = function('Foo')
call F()
"---
function! Foo()
  return 1
endfunction
let F = function('Foo')
echo call(F, [1])
"---
function! Foo()
  return F2()
endfunction
let g:F2 = function('Foo')
echo Foo()
"---
let g:Rec = function('abs')
function! Rec2(n)
  return a:n ? g:Rec(a:n) : 0
endfunction
echo Rec2(-3)
"---
function! Foo(...)
  return call('printf', a:000)
endfunction
echo Foo('%s-%s', 1, 2)
"---
function! Foo(f, ...)
  return call(a:f, a:000)
endfunction
echo Foo(function('max'), [3, 4]) Foo('min', [3, 4])
"---
echo call(function('printf'), ['%d', 5])
"---
echo call('printf', ['%d'])
"---
echo exists('*function') exists('*funcref') exists('*call')
"---
echo type(function('abs')) == type(function('abs', [1]))
"---
echo [function('abs')] == [function('abs')]
"---
echo {'a': function('abs')} == {'a': function('abs')}
"---
echo {'a': function('abs')} == {'a': function('abs', [1])}
"---
echo [function('abs')] is [function('abs')]
"---
let l = [function('abs')]
let m = copy(l)
echo m[0] is l[0] m == l
"---
echo has_key({'f': function('abs')}, 'f')
"---
echo len([function('abs')]) empty([function('abs')])
"---
echo join([function('abs')])
"---
echo string([function('abs', [1], {'a': function('abs')})])
"---
echo function('abs', [[1], {'a': 1}])
"---
let d = {}
let d.f = function('abs', [-1], d)
echo d.f()
echo string(d.f)
"---
let l = [1]
let P = function('abs', [l])
call add(l, P)
echo P
