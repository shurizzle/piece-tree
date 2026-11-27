function! Foo()
  delfunction Foo
endfunction
call Foo()
echo exists('*Foo')
"---
function! Foo()
  function! Foo()
    return 2
  endfunction
endfunction
call Foo()
echo Foo()
"---
function! A()
  return B()
endfunction
function! B()
  return A()
endfunction
echo A()
"---
function! A(n)
  return a:n > 0 ? A(a:n - 1) : 'done'
endfunction
echo A(50)
echo A(99)
echo A(100)
"---
function! A(n)
  if a:n > 0
    call A(a:n - 1)
  endif
  return a:n
endfunction
echo A(98)
"---
function! IsOk()
  return 1
endfunction
if IsOk()
  echo 'yes'
endif
"---
function! Items()
  return [1, 2, 3]
endfunction
for x in Items()
  echo x
endfor
"---
function! Cond()
  return 0
endfunction
while Cond()
  echo 'never'
endwhile
echo 'done'
"---
function! Foo()
  echo 'foo'
endfunction
execute 'call Foo()'
execute 'echo 1' '| call Foo()'
"---
function! Foo()
  echo 'foo'
endfunction
let x = 1 | call Foo() | echo x
"---
function! Foo()
  return 'foo'
endfunction
let s = Foo() . Foo()
echo s
"---
function! Foo()
  return 3
endfunction
echo Foo() + Foo() * 2
"---
function! Foo()
  return 3
endfunction
echo -Foo() !Foo() Foo() ? 'a' : 'b'
"---
function! Foo()
  return 3
endfunction
let x = [Foo(), Foo() + 1]
echo x
"---
function! Foo()
  return 3
endfunction
let d = {'a': Foo()}
echo d
"---
function! Foo(...)
  return a:000
endfunction
echo Foo(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
"---
function! Foo(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t)
  return a:t
endfunction
echo Foo(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
"---
function! Foo(a)
  let a = 'local'
  let l:b = 'localb'
  return [a, a:a, l:a, b, l:b]
endfunction
echo Foo('arg')
"---
function! Foo(a)
  return a:a
endfunction
let g:a = 'ga'
echo Foo('arg') g:a
"---
function! Foo()
  let x = 'l'
  let g:x = 'g'
  return [x, g:x, l:x]
endfunction
echo Foo()
"---
let g:x = 'g'
function! Foo()
  let x = x . 'l'
endfunction
call Foo()
"---
let g:x = 'g'
function! Foo()
  let g:x ..= 'l'
  let g:x .= 'm'
endfunction
call Foo()
echo g:x
"---
function! Foo()
  let d = {}
  let d.k = 1
  let l:d.j = 2
  return d
endfunction
echo Foo()
"---
function! Foo()
  let l:
endfunction
call Foo()
"---
function! Foo()
  let a:
endfunction
call Foo()
"---
function! Foo()
  echo l: a:
endfunction
call Foo()
"---
function! Foo(a)
  echo type(l:) type(a:)
endfunction
call Foo(1)
"---
function! Foo(a)
  let l:v = 1
  return sort(keys(l:)) + sort(keys(a:))
endfunction
echo Foo(1)
"---
function! Foo(a)
  let a:['new'] = 1
endfunction
call Foo(1)
"---
function! Foo(a)
  let l:['z'] = 1
  return l:z
endfunction
echo Foo(1)
"---
function! Foo()
  unlet! l:nosuch
  unlet l:nosuch
endfunction
call Foo()
"---
function! Foo()
  let x = 1
  unlet l:x
  echo exists('l:x')
endfunction
call Foo()
"---
function! Foo()
  let &tabstop = 3
  let @a = 'reg'
  let $FOO_UF = 'env'
endfunction
call Foo()
echo &tabstop @a $FOO_UF
"---
function! Foo()
  return &nosuch
endfunction
echo Foo()
"---
function! Foo()
  return [line('.'), col('.')]
endfunction
echo Foo()
"---
function! Foo()
  normal! ihello
endfunction
call Foo()
echo getline(1)
"---
function! Foo()
  1,2call Bar()
endfunction
function! Bar()
  echo 'bar'
endfunction
call Foo()
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! Foo()
  %call Bar()
endfunction
function! Bar()
  echo line('.')
endfunction
call Foo()
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! Bar() range
  echo [a:firstline, a:lastline, line('.')]
endfunction
2,3call Bar()
%call Bar()
3call Bar()
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! Bar()
  echo [a:firstline, a:lastline, line('.')]
endfunction
2,3call Bar()
%call Bar()
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! Bar()
  normal! dd
endfunction
%call Bar()
echo line('$')
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! Bar()
  return a:firstline
endfunction
gg
echo Bar()
G
echo Bar()
"---
function! Foo()
  echo 'a'
  echo 'b'
endfunction
call Foo()
echo 'c'
"---
function! Foo()
  echon 'a'
  echon 'b'
endfunction
call Foo()
echo 'c'
"---
function! Foo()
  echomsg 'm'
  echoerr 'e'
  echo 'after e'
endfunction
call Foo()
"---
function! Foo()
  echoerr 'e1' 'e2'
endfunction
call Foo()
call Foo()
"---
function! Foo()
  call nosuch()
endfunction
call Foo()
call Foo()
"---
function! Foo()
  let x = [1][5]
endfunction
call Foo()
"---
function! Foo()
  let [a, b] = [1]
endfunction
call Foo()
"---
function! Foo()
  echo 1 +
endfunction
call Foo()
"---
function! Foo()
  nosuchcommand
endfunction
call Foo()
"---
function! Foo()
  1,2nosuchcommand
endfunction
call Foo()
"---
function! Foo()
  if 1
  elseif
endfunction
call Foo()
"---
function! Foo()
  endwhile
endfunction
call Foo()
"---
function! Foo()
  break
endfunction
call Foo()
"---
function! Foo()
  continue
endfunction
call Foo()
"---
function! Foo()
  while 1
    return 1
  endwhile
endfunction
echo Foo()
"---
function! Foo()
  for i in range(3)
    for j in range(3)
      if i == 1 && j == 1
        return [i, j]
      endif
    endfor
  endfor
endfunction
echo Foo()
"---
function! Foo()
  let i = 0
  while i < 5
    let i += 1
    if i == 2
      continue
    endif
    if i == 4
      break
    endif
    echo i
  endwhile
  return i
endfunction
echo Foo()
"---
function! Foo()
  let r = []
  for i in range(3)
    call add(r, Bar(i))
  endfor
  return r
endfunction
function! Bar(i)
  if a:i == 1
    return 'one'
  endif
  return a:i
endfunction
echo Foo()
"---
function! Foo()
  let i = 0
  while i < 3
    let i += 1
    let x =<< END
hd
END
    echo x
  endwhile
endfunction
call Foo()
"---
function! Foo()
  let i = 0
  while i < 2
    let i += 1
    execute 'echo ' . i
  endwhile
endfunction
call Foo()
"---
function! Foo()
  for i in [1, 2]
    call Bar()
  endfor
endfunction
function! Bar()
  echo nosuch
endfunction
call Foo()
"---
function! Foo() abort
  for i in [1, 2]
    echo i
    echo nosuch
  endfor
endfunction
call Foo()
"---
function! Foo()
  for i in [1, 2]
    echo i
    echo nosuch
  endfor
endfunction
call Foo()
"---
function! Foo() abort
  let i = 0
  while i < 3
    let i += 1
    if i == 2 | echo nosuch | endif
    echo i
  endwhile
endfunction
call Foo()
"---
function! Foo()
  silent! call nosuch()
  echo v:errmsg
endfunction
call Foo()
"---
function! Foo()
  echo 'x' | call nosuch() | echo 'y'
endfunction
call Foo()
"---
function! Foo() abort
  echo 'x' | call nosuch() | echo 'y'
endfunction
call Foo()
"---
function! Foo()
  let x = 'abc'
  return x[1:]
endfunction
echo Foo()
"---
function! Foo(a)
  return a:a . a:a
endfunction
echo map(['a', 'b'], 'Foo(v:val)')
"---
function! Foo(a)
  return a:a > 1
endfunction
echo filter([1, 2, 3], 'Foo(v:val)')
"---
function! Cmp(a, b)
  return a:a - a:b
endfunction
echo sort([3, 1, 2], 'Cmp')
"---
function! Cmp(a, b)
  return a:b - a:a
endfunction
echo sort([3, 1, 2], 'Cmp')
"---
function! Cmp(a, b)
  echo nosuch
  return 0
endfunction
echo sort([3, 1, 2], 'Cmp')
"---
echo sort([3, 1, 2], 'NoCmp')
"---
function! Eval(s)
  return eval(a:s)
endfunction
echo Eval('1 + 2')
"---
function! Foo()
  return g:Bar()
endfunction
function! Bar()
  return 'bar'
endfunction
echo Foo()
"---
function! Foo()
  return Bar()
endfunction
echo Foo()
"---
function! Foo()
  return Bar()
endfunction
call Foo()
call Foo()
"---
function! Foo()
  return v:true
endfunction
echo Foo() type(Foo())
"---
function! Foo()
  return v:null
endfunction
echo Foo() type(Foo())
"---
function! Foo()
  return
endfunction
echo Foo() type(Foo())
"---
function! Foo()
  return 'a' 'b'
endfunction
echo Foo()
"---
function! Foo()
  return 1, 2
endfunction
echo Foo()
"---
function! Foo()
  return (1
endfunction
echo Foo()
