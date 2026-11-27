function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('d')
  echo 'body'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E(1)
  defer E(2)
  defer E(3)
  echo 'body'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  let x = 1
  defer E(x)
  let x = 2
  echo 'body' x
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  let l = [1]
  defer E(l)
  call add(l, 2)
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E()
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
defer E('x')
"---
function E(...)
  echo 'E' a:000
endfunction
defer E('x') | echo 'after'
"---
function E(...)
  echo 'E' a:000
endfunction
if 0
  defer E('x')
endif
echo 'ok'
"---
function E(...)
  echo 'E' a:000
endfunction
if 1
  defer E('x')
endif
echo 'ok'
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  if 0
    defer E('x')
  endif
  echo 'f'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  for i in range(3)
    defer E(i)
  endfor
endfunction
call F()
"---
function F()
  defer Later('x')
endfunction
call F()
"---
function F()
  defer Later('x')
endfunction
function Later(a)
  echo 'later' a:a
endfunction
call F()
"---
function F()
  defer Later('x')
  function! Later(a)
    echo 'defined' a:a
  endfunction
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer nosuch()
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer abs()
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer abs(1, 2)
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer abs(-1)
  echo 'f'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer execute('echo 1')
endfunction
call F()
"---
function Two(a, b)
  echo a:a a:b
endfunction
function F()
  defer Two(1)
endfunction
call F()
"---
function Two(a, b)
  echo a:a a:b
endfunction
function F()
  defer Two(1, 2, 3)
endfunction
call F()
"---
function Two(a, b)
  echo a:a a:b
endfunction
function F()
  defer Two(1, 2)
endfunction
call F()
"---
function Va(...)
  echo a:000
endfunction
function F()
  defer Va()
  defer Va(1, 2, 3)
endfunction
call F()
"---
function Df(a, b = 5)
  echo a:a a:b
endfunction
function F()
  defer Df(1)
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  let Fn = function('E')
  defer Fn('viavar')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  let Fn = function('E', ['p1'])
  defer Fn('viapartial')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer function('E', ['p1'])('x')
endfunction
call F()
"---
function Dm() dict
  echo 'dm'
endfunction
function F()
  let d = {'f': function('Dm')}
  defer d.f()
endfunction
call F()
"---
function F()
  let d = {}
  function d.f()
    echo 'dict'
  endfunction
  defer d.f()
endfunction
call F()
"---
function Dm() dict
  echo 'dm'
endfunction
function F()
  let d = {}
  let Fn = function('Dm', d)
  defer Fn()
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  let l = [function('E')]
  defer l[0]('item')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer {x -> E(x)}('lam')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a') x
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E ('sp')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a') | echo 'next'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E(nosuchvar)
  echo 'after'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  return 'ret'
  defer E('x')
endfunction
echo F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('x')
  return 'ret'
endfunction
echo F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F() abort
  defer E('x')
  echo nosuch
  echo 'not reached'
endfunction
echo F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('x')
  echo nosuch
  echo 'reached'
endfunction
echo F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('x')
  throw 'boom'
endfunction
try
  call F()
catch
  echo 'caught' v:exception
endtry
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('x')
  throw 'boom'
endfunction
call F()
echo 'next'
"---
function Bad()
  throw 'inside'
endfunction
function F()
  defer Bad()
  echo 'body'
endfunction
try
  call F()
catch
  echo 'caught' v:exception
endtry
"---
function Bad()
  echo nosuch
endfunction
function F()
  defer Bad()
  echo 'body'
endfunction
call F()
echo 'after'
"---
function Bad()
  echo nosuch
endfunction
function F() abort
  defer Bad()
  echo 'body'
endfunction
echo F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  try
    defer E('in try')
    throw 'x'
  catch
    echo 'c'
  finally
    echo 'fin'
  endtry
  echo 'end'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function Inner()
  defer E('inner')
  echo 'in inner'
endfunction
function F()
  defer E('outer')
  call Inner()
  echo 'after inner'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function Inner()
  defer E('inner')
endfunction
function F()
  defer E('first')
  defer Inner()
  defer E('last')
endfunction
call F()
"---
function F()
  defer F2()
endfunction
function F2()
  defer F3()
  echo 'f2'
endfunction
function F3()
  echo 'f3'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E(v:exception)
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E(a:x)
endfunction
call F(7)
"---
function E(...)
  echo 'E' a:000
endfunction
function F(x)
  defer E(a:x)
  let a:x = 1
endfunction
call F(7)
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  let g:cnt = 0
  defer execute('let g:cnt += 1')
endfunction
call F()
call F()
echo g:cnt
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer call('E', ['viacall'])
endfunction
call F()
"---
function F()
  defer echo('x')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a')
  defer E('b')
  silent! echo nosuch
endfunction
call F()
"---
function F()
  defer Rec(2)
endfunction
function Rec(n)
  echo 'rec' a:n
  if a:n > 0
    defer Rec(a:n - 1)
  endif
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  execute 'defer E("viaexecute")'
  echo 'f'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  normal! ix
  defer E('x')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('r') " comment
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('r') | defer E('s')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
defer

"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('x')
  finish
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function R() range
  defer E(a:firstline, a:lastline)
endfunction
2,3call R()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E(1)
endfunction
function G()
  call F()
  call F()
endfunction
call G()


"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a')| echo 'next'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a')" comment
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a')|defer E('b')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a')
|echo 'x'
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E('a'),
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer E(1,)
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
function F()
  defer g:E('g')
  defer s:E('s')
endfunction
call F()
"---
function E(...)
  echo 'E' a:000
endfunction
echo exists(':defer') exists(':defe')
