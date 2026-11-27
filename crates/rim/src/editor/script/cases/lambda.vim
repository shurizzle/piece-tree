echo {x -> x + 1}
"---
echo {x -> x + 1}(2)
"---
echo {x, y -> x + y}(1, 2)
"---
echo {-> 5}()
"---
echo {... -> a:000}(1, 2, 3)
"---
echo {x, ... -> a:000}(1, 2, 3)
"---
echo {x -> x}()
"---
echo {x -> x}(1, 2)
"---
echo {x -> a:1}(1, 2)
"---
echo {x -> a:0}(1, 2, 3)
"---
echo {x -> a:x}(5)
"---
echo {x -> a:000}(1)
"---
echo {x -> a:firstline}(1)
"---
echo {-> a:lastline}()
"---
echo {x -> nosuch}(1)
"---
echo {x -> x +}(1)
"---
echo {x -> x
"---
echo {x x -> x}
"---
echo {x, x -> x}
"---
echo {1 -> x}
"---
echo {firstline -> 1}
"---
echo {x,-> 1}
"---
echo {x -> {y -> x + y}}(1)(2)
"---
echo {x -> {y -> x + y}}(1)
"---
echo {x -> x}(1)(2)
"---
echo {'a': 1}
"---
echo {}
"---
echo {x}
"---
echo {'a' -> 1}
"---
echo {a:b -> 1}
"---
echo {x -> [x, x]}(3)
"---
echo {x -> {'k': x}}(3)
"---
echo {x -> x . 'a'}('b')
"---
echo {x -> x ? 'y' : 'n'}(0)
"---
echo {x -> len(x)}([1, 2])
"---
echo string({x -> x})
"---
echo type({x -> x})
"---
echo empty({x -> x})
"---
echo {x -> x} == {x -> x}
"---
echo {x -> x} is {x -> x}
"---
echo copy({x -> x})
"---
echo [{x -> x}]
"---
echo {'f': {x -> x}}
"---
echo {x -> x}->string()
"---
echo 3->{x -> x * 2}()
"---
echo [1, 2]->map({k, v -> v * 2})
"---
echo map([1, 2, 3], {k, v -> v * v})
"---
echo map({'a': 1, 'b': 2}, {k, v -> k . v})
"---
echo filter([1, 2, 3, 4], {k, v -> v % 2 == 0})
"---
echo filter({'a': 1, 'b': 2}, {k, v -> v > 1})
"---
echo sort([3, 1, 2], {a, b -> a - b})
"---
echo sort([3, 1, 2], {a, b -> b - a})
"---
echo uniq(sort([2, 1, 2, 1], {a, b -> a - b}), {a, b -> a - b})
"---
echo map('abc', {k, v -> toupper(v)})
"---
echo call({x -> x + 1}, [1])
"---
echo call({x, y -> x . y}, ['a', 'b'])
"---
echo get({x -> x}, 'name')
"---
echo get({x -> x}, 'args')
"---
echo get({x, y -> x}, 'arity')
"---
echo get({x -> x}, 'dict')
"---
echo function('abs', [-1])->{f -> f()}()
"---
echo {f -> f(-2)}(function('abs'))
"---
echo {f -> f()}({-> 'called'})
"---
echo map([1, 2], {_, v -> {-> v}})->map({_, F -> F()})
"---
echo {x -> x}(1) + {x -> x}(2)
"---
echo [{-> 1}(), {-> 2}()]
"---
echo {-> v:true}()
"---
echo {x -> x isnot v:null}(1)
"---
echo {-> $HOME} != ''
"---
echo {-> @a}()
"---
echo {-> 1 + {-> 2}()}()
"---
echo {x -> x}(nosuch)
"---
let F = {x -> x * 2}
echo F(4) F
echo string(F)
echo type(F)
"---
let F = {x -> x * 2}
echo F
let G = F
echo G(1) F == G F is G
"---
let f = {x -> x}
"---
let F = {x -> x}
function F
function! F
"---
let F = {x -> x}
function
"---
let F = {x -> x}
echo exists('*F')
"---
let F = {x -> x * 2}
call F(3)
call F()
"---
let F = {x -> x + y}
let y = 1
echo F(1)
"---
let y = 1
let F = {x -> x + y}
let y = 2
echo F(1)
"---
let y = 1
let F = {x -> x + g:y}
let g:y = 5
echo F(1)
"---
function! Mk(n)
  return {x -> x + a:n}
endfunction
let F = Mk(10)
echo F(1) F(2)
let G = Mk(20)
echo G(1) F(1)
"---
function! Mk(n)
  let loc = a:n * 2
  return {x -> x + loc}
endfunction
echo Mk(5)(1) Mk(6)(1)
"---
function! Mk(n)
  let loc = a:n
  let F = {x -> x + loc}
  let loc = 100
  return F
endfunction
echo Mk(5)(1)
"---
function! Mk()
  let l:cnt = 0
  return {-> l:cnt}
endfunction
echo Mk()()
"---
function! Mk()
  let cnt = 0
  return {-> cnt}
endfunction
echo Mk()()
"---
function! Mk()
  return {-> 1}
endfunction
echo Mk()() string(Mk())
"---
function! Mk()
  let x = 1
  return {-> g:x}
endfunction
let g:x = 'glob'
echo Mk()()
"---
function! Mk(a)
  return {-> a:a . a:a}
endfunction
echo Mk('z')()
"---
function! Mk(a)
  return {x -> a:a . x}
endfunction
echo Mk('z')('y')
"---
function! Mk()
  let x = 1
  return {y -> {z -> x + y + z}}
endfunction
echo Mk()(10)(100)
"---
function! Mk()
  let l = []
  call map([1, 2, 3], {_, v -> add(l, v * 2)})
  return l
endfunction
echo Mk()
"---
function! Counter()
  let count = 0
  function! Inc() closure
    let count += 1
    return count
  endfunction
  return funcref('Inc')
endfunction
let C = Counter()
echo C() C() C()
"---
function! Counter()
  let count = 0
  function! Inc() closure
    let count += 1
    return count
  endfunction
  return funcref('Inc')
endfunction
let C = Counter()
let D = Counter()
echo C() C() D()
"---
function! Counter()
  let count = 0
  function! Get() closure
    return count
  endfunction
  let count = 5
  return funcref('Get')
endfunction
echo Counter()()
"---
function! Foo() closure
endfunction
"---
function! Foo()
  function! Bar() closure
    return 1
  endfunction
  function Bar
endfunction
call Foo()
"---
function! Foo()
  let x = 1
  function! Bar() closure
    return x
  endfunction
  function Bar
endfunction
call Foo()
"---
function! Foo()
  let x = 'cl'
  function! Bar() closure
    let x = 'changed'
    let y = 'new'
    return [x, y]
  endfunction
  let r = Bar()
  return [r, x]
endfunction
echo Foo()
"---
function! Foo(a)
  function! Bar() closure
    return a:a
  endfunction
  return Bar()
endfunction
echo Foo(7)
"---
function! Foo()
  return {-> nosuch}
endfunction
echo Foo()()
"---
function! Foo()
  let F = {x -> x + nosuch}
  return F(1)
endfunction
echo Foo()
"---
let F = {x -> x + nosuch}
echo F(1)
echo 'after'
"---
let F = {x -> x + nosuch}
call F(1)
call F(2)
"---
function! Foo()
  return map([1, 2], {_, v -> v + nosuch})
endfunction
echo Foo()
"---
let F = {-> {-> nosuch}()}
echo F()
"---
echo map([1, 2], {_, v -> v + nosuch})
"---
echo filter([1, 2], {k, v -> nosuch})
"---
echo sort([3, 1, 2], {a, b -> nosuch})
"---
echo sort([3, 1, 2], {a -> 0})
"---
let g:d = {'n': 1}
let F = {-> g:d.n}
let g:d.n = 2
echo F()
"---
let l = [1, 2]
let F = {-> l}
echo F()
"---
let X = {x -> x}
let X2 = X
unlet X
echo X2(5)
"---
let X = {x -> x}
echo X(1) | echo 'same line'
"---
let X = {x -> x}
call X(1) | echo 'same line'
"---
let X = {x -> x}
execute 'echo X(3)'
"---
function! Apply(f, x)
  return a:f(a:x)
endfunction
echo Apply({v -> v * 3}, 4)
"---
function! Apply(f, x)
  return call(a:f, [a:x])
endfunction
echo Apply({v -> v * 3}, 4) Apply(function('abs'), -9)
"---
function! Compose(f, g)
  return {x -> a:f(a:g(x))}
endfunction
echo Compose({x -> x + 1}, {x -> x * 2})(5)
"---
function! Curry(f, a)
  return {b -> a:f(a:a, b)}
endfunction
echo Curry({a, b -> a - b}, 10)(3)
"---
let Fib = {n -> n < 2 ? n : g:Fib(n - 1) + g:Fib(n - 2)}
echo Fib(10)
"---
function! Foo()
  let l:F = {x -> x * 2}
  return l:F(4)
endfunction
echo Foo()
"---
function! Foo()
  let F = {x -> x * 2}
  return F(4) . ' ' . string(F)
endfunction
echo Foo()
"---
function! Foo()
  let F = {x -> x * 2}
  call F(1, 2)
endfunction
call Foo()
