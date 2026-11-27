function! Add(a, b)
  return a:a + a:b
endfunction
echo Add(1, 2)
"---
function! Noret()
  let x = 1
endfunction
echo Noret()
"---
function! Ret0()
  return
endfunction
echo Ret0()
"---
function! RetL()
  return [1, {'a': 2}]
endfunction
echo RetL()
"---
function! RetF()
  return 1.5
endfunction
echo RetF()
"---
function! Early()
  return 1
  echo "not reached"
endfunction
echo Early()
"---
function! Cond(x)
  if a:x
    return 'yes'
  endif
  return 'no'
endfunction
echo Cond(1) Cond(0)
"---
function! Loop()
  let i = 0
  while 1
    let i += 1
    if i > 3
      return i
    endif
  endwhile
endfunction
echo Loop()
"---
function! ForRet()
  for i in [1, 2, 3]
    if i == 2
      return i
    endif
  endfor
endfunction
echo ForRet()
"---
function! Fact(n)
  if a:n <= 1
    return 1
  endif
  return a:n * Fact(a:n - 1)
endfunction
echo Fact(5)
"---
function! Rec()
  call Rec()
endfunction
call Rec()
"---
function! Va(a, ...)
  return [a:0, a:000, a:a, a:1]
endfunction
echo Va(1, 2, 3)
"---
function! Va(...)
  return [a:0, a:000]
endfunction
echo Va() Va(1)
"---
function! Va(...)
  return a:2
endfunction
echo Va(1, 2, 3)
"---
function! Va(a, ...)
  return a:1
endfunction
echo Va(1)
"---
function! Def(a, b = 2, c = a:b + 1)
  return [a:a, a:b, a:c]
endfunction
echo Def(1) Def(1, 5) Def(1, 5, 9)
"---
function! Def(a, b = nosuch)
  return a:b
endfunction
echo Def(1)
"---
function! Def(a, b = nosuch)abort
  return a:b
endfunction
echo Def(1)
"---
function! Def(a, b = 1)
  return a:b
endfunction
echo Def()
"---
function! Add(a, b)
  return 1
endfunction
echo Add(1)
"---
function! Add(a, b)
  return 1
endfunction
echo Add(1, 2, 3)
"---
function! Add(a, b)
  return 1
endfunction
echo Add()
"---
function! One()
  return 1
endfunction
echo One(1)
"---
echo Nope()
"---
echo Nope(1, 2)
"---
call Nope()
"---
echo g:Nope()
"---
function! Glob()
  return 5
endfunction
echo g:Glob() Glob()
"---
function! Mod(x)
  let a:x = 5
endfunction
call Mod(1)
"---
function! Mod(x)
  let a:y = 5
endfunction
call Mod(1)
"---
function! Mod(x)
  let a:x += 5
endfunction
call Mod(1)
"---
function! Mod(...)
  let a:000 = 5
endfunction
call Mod()
"---
function! Mod(x)
  unlet a:x
endfunction
call Mod(1)
"---
function! Mod(l)
  let a:l[0] = 5
endfunction
let g:v = [1]
call Mod(g:v)
echo g:v
"---
function! Loc()
  let x = 1
  let l:y = 2
  return [x, l:x, y, l:y]
endfunction
echo Loc()
"---
let x = 'global'
function! Iso()
  return x
endfunction
echo Iso()
"---
let x = 'global'
function! Iso()
  return g:x
endfunction
echo Iso()
"---
let x = 'global'
function! Iso()
  let x = 1
  return g:x . x
endfunction
echo Iso() x
"---
function! SetG()
  let g:made = 7
endfunction
call SetG()
echo g:made
"---
function! SetG()
  let b:made = 7
  let w:made = 8
  let t:made = 9
endfunction
call SetG()
echo b:made w:made t:made
"---
function! Undef()
  return nosuch
endfunction
echo Undef()
"---
function! Undef()abort
  return nosuch
endfunction
echo Undef()
"---
function! Undef()
  echo 1
  echo nosuch
  echo 3
endfunction
call Undef()
echo 'after'
"---
function! Undef()abort
  echo 1
  echo nosuch
  echo 3
endfunction
call Undef()
echo 'after'
"---
function! Undef()
  echo 1
  echo nosuch | echo 4
  echo 3
endfunction
call Undef()
"---
function! Undef()abort
  echo 1
  echo nosuch | echo 4
  echo 3
endfunction
call Undef()
"---
function! Inner()
  echo nosuch
endfunction
function! Outer()
  call Inner()
  echo 'after'
endfunction
call Outer()
"---
function! Inner()abort
  echo nosuch
endfunction
function! Outer()
  call Inner()
  echo 'after'
endfunction
call Outer()
"---
function! Inner()abort
  echo nosuch
endfunction
function! Outer()abort
  call Inner()
  echo 'after'
endfunction
call Outer()
"---
function! Inner()
  echo nosuch
endfunction
function! Outer()
  let x = Inner()
  echo 'after' x
endfunction
call Outer()
"---
function! Inner()abort
  echo nosuch
endfunction
function! Outer()
  let x = Inner()
  echo 'after' x
endfunction
call Outer()
"---
function! Err2()
  echo 1
  
    echo nosuch
endfunction
call Err2()
"---
function! Err2()
  echo 1
  echo 2 \
    . nosuch
  echo 4
endfunction
call Err2()
"---
function! Err3()
  if 1
    echo nosuch
  endif
endfunction
call Err3()
"---
function! Miss()
  if 1
    echo 1
endfunction
call Miss()
"---
function! Miss()
  while 1
    break
endfunction
call Miss()
"---
function! Miss()
  for i in [1]
    echo i
endfunction
call Miss()
"---
function! Miss()
  if 1
    return 3
endfunction
echo Miss()
"---
function! Extra()
  endif
endfunction
call Extra()
"---
function! Fin()
  finish
endfunction
call Fin()
"---
function! NoEnd()
  echo 1
endfunction
call NoEnd()
function! NoEnd()
endfunction
echo 'x'
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! Rng()range
  echo [a:firstline, a:lastline]
endfunction
1,3call Rng()
call Rng()
2call Rng()
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! NoRng()
  echo [a:firstline, a:lastline, line('.')]
endfunction
1,3call NoRng()
2call NoRng()
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! NoRng()
  echo [a:firstline, a:lastline]
endfunction
%call NoRng()
"---
normal! ia\<CR>b\<CR>c\<Esc>
function! Rng()range
  echo 1
endfunction
5call Rng()
"---
function! Rng()
  echo [a:firstline, a:lastline]
endfunction
echo Rng()
"---
function! Dic()dict
  return 1
endfunction
echo Dic()
"---
function! Dic()dict
  return 1
endfunction
call Dic()
"---
function! s:Loc(x)
  return a:x * 2
endfunction
echo s:Loc(2)
echo <SID>Loc(3)
call s:Loc(4)
"---
function! s:Loc(x)
  return a:x * 2
endfunction
echo exists('*s:Loc') exists('*<SID>Loc') exists('*Loc')
"---
function! s:Loc(x)
  echo nosuch
endfunction
call s:Loc(4)
"---
echo s:Nope()
"---
echo <SID>Nope()
"---
echo <SNR>1_Nope()
"---
function! s:Loc()
  return 5
endfunction
echo <SNR>1_Loc()
"---
function! Foo()
  return 1
endfunction
echo exists('*Foo') exists('*Foo()') exists('*Foo ') exists('*Foo(1)') exists('*Foo!') exists('*Fo') exists('*Nope') exists('*strlen') exists('*g:Foo')
"---
function! Foo()
  return 1
endfunction
delfunction Foo
echo exists('*Foo')
echo Foo()
"---
function! Foo()
  delfunction Foo
endfunction
call Foo()
"---
function! Foo()
  function! Foo()
  endfunction
endfunction
call Foo()
"---
function! Foo()
  function! Bar()
    return 'bar'
  endfunction
endfunction
call Foo()
echo Bar()
"---
function! Foo()
  return Foo2()
endfunction
function! Foo2()
  return 'late'
endfunction
echo Foo()
"---
function! Foo()
  execute 'echo 1'
  execute "if 1\n echo 2\nendif"
endfunction
call Foo()
"---
function! Foo()
  execute 'if 1'
  echo 2
  execute 'endif'
  echo 3
endfunction
call Foo()
"---
function! Foo()
  let x =<< END
line
END
  return x
endfunction
echo Foo()
"---
function! Foo()
  let x =<< trim END
    line1
      line2
    END
  return x
endfunction
echo Foo()
"---
function! Foo()
  let l:z = 1
  let g:z = 2
  return l:z
endfunction
echo Foo() g:z
"---
function! Foo()
  let x = 1
  unlet x
  return exists('x') . exists('l:x')
endfunction
echo Foo()
"---
function! Foo(a)
  return [exists('a:a'), exists('a:b'), exists('a:0'), exists('a:000'), exists('a:firstline'), exists('l:a'), exists('a')]
endfunction
echo Foo(1)
"---
function! Foo()
  let d = {'k': 1}
  let d.k = 2
  return d
endfunction
echo Foo()
"---
function! Foo()
  let [a, b] = [1, 2]
  return a + b
endfunction
echo Foo()
"---
function! Foo()
  for [k, v] in [[1, 2], [3, 4]]
    echo k v
  endfor
endfunction
call Foo()
"---
function! Foo()
  let l = []
  for i in range(3)
    call add(l, i)
  endfor
  return l
endfunction
echo Foo()
"---
function! Foo(...)
  let s = 0
  for x in a:000
    let s += x
  endfor
  return s
endfunction
echo Foo(1, 2, 3, 4)
"---
function! Foo(l)
  call add(a:l, 4)
endfunction
let g:m = [1]
call Foo(g:m)
echo g:m
"---
function! Foo(n)
  return a:n
endfunction
echo Foo(Foo(Foo(3)))
"---
function! Foo(n)
  return a:n . 'x'
endfunction
echo [1, 2]->len()->Foo()
"---
function! Foo(a, b)
  return a:a . a:b
endfunction
echo 'x'->Foo('y')
"---
function! Foo(a, b)
  return a:a . a:b
endfunction
echo 'x'->Foo()
"---
function! Foo()
  return 1
endfunction
echo 'x'->Foo()
"---
function! Foo() abort
  echo 1
  call nosuch()
  echo 2
endfunction
call Foo()
echo 'next'
"---
function! Foo()
  silent! echo nosuch
  echo 'ok'
endfunction
call Foo()
"---
function! Foo()
  silent echo 'quiet'
  echo 'loud'
endfunction
call Foo()
"---
function! Foo()
  echo 'in'
endfunction
silent call Foo()
"---
function! Foo()
  echo nosuch
endfunction
silent! call Foo()
echo 'after'
"---
function! Foo()
  echoerr 'boom'
  echo 'next'
endfunction
call Foo()
"---
function! Foo() abort
  echoerr 'boom'
  echo 'next'
endfunction
call Foo()
"---
function! Foo()
  let x = Foo2()
  return x
endfunction
function! Foo2()
  return
endfunction
echo Foo()
"---
function! Foo()
  return 1 | echo 'not run'
endfunction
echo Foo()
"---
function! Foo()
  echo 'a' | return 2 | echo 'not run'
endfunction
echo Foo()
"---
function! Foo()
  return nosuch
  echo 'after'
endfunction
echo Foo()
"---
function! Foo()
  return 1 +
endfunction
echo Foo()
"---
return 1
"---
return
"---
if 0
  return 1
endif
echo 'ok'
"---
function! Foo()
  if 0
    return 1
  endif
  return 2
endfunction
echo Foo()
"---
function! Foo()
  return 1 " comment
endfunction
echo Foo()
"---
function! Foo()
  return "x" " comment
endfunction
echo Foo()
"---
function! Foo()
  return" no
endfunction
echo Foo()
"---
function! Foo()
  return|echo 1
endfunction
echo Foo()
"---
function! Foo()
  echo a:nosuch
endfunction
call Foo()
"---
function! Foo(a)
  return a:a
endfunction
echo Foo(x)
"---
function! Foo(a)
  return a:a
endfunction
echo Foo(nosuch)
"---
function! Foo(a)
  return a:a
endfunction
call Foo(1)(2)
"---
function! Foo(a)
  return [1, 2]
endfunction
call Foo(1)[0]
echo Foo(1)[1]
"---
function! Foo()
  return {'a': [1, 2]}
endfunction
echo Foo().a[1]
"---
function! Foo()
  return 'str'
endfunction
echo Foo()[1:2] Foo()[-1]
"---
function! Foo (a)
  return a:a
endfunction
echo Foo (1)
"---
function! Foo(a)
  return a:a
endfunction
echo Foo (1)
"---
function! Foo(a)
  return a:a
endfunction
call Foo (1)
"---
function! Foo(a)
  return a:a
endfunction
call Foo
"---
function! Foo(a)
  return a:a
endfunction
call Foo(1
"---
function! Foo(a)
  return a:a
endfunction
call Foo(1,)
"---
function! Foo(a)
  return a:a
endfunction
echo Foo(,1)
"---
function! Foo(a)
  return a:a
endfunction
echo Foo(1,2
"---
let g:cnt = 0
function! Cnt()
  let g:cnt += 1
  return g:cnt
endfunction
echo Cnt() Cnt() Cnt()
"---
let g:cnt = 0
function! Cnt()
  let g:cnt += 1
  return g:cnt
endfunction
echo 0 && Cnt() 1 || Cnt() 1 ? 2 : Cnt()
echo g:cnt
"---
function! A()
  return B()
endfunction
function! B()
  return C()
endfunction
function! C()
  echo nosuch
  return 'c'
endfunction
echo A()
"---
function! A()
  call B()
endfunction
function! B()
  call C()
endfunction
function! C()
  call nosuch()
endfunction
call A()
"---
function! A()
  echo 1
  call B()
endfunction
function! B()
  echo 2
  echo nosuch
endfunction
call A()
call A()
"---
function! A()
  echo nosuch
  echo nosuch2
endfunction
call A()
call A()
"---
function! A()
  echo nosuch
endfunction
call A()
echo nosuch2
call A()

"---
function! Foo()
  let x = 1
  let y = 'two'
  let l:
endfunction
call Foo()
"---
function! Foo(a)
  let x = 1
  let a:
endfunction
call Foo(1)
"---
function! Foo()
  let x = 1
  let y = 2
  let x y
endfunction
call Foo()
"---
function! Foo()
  let x = 1
  let l:x
  let a:000
endfunction
call Foo()