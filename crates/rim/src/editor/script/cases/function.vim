function! Foo(a, b = 2, ...) abort range
  echo a:a
  if 1
    echo 'x'
  endif
endfunction
function Foo
"---
function! Foo(a, b = 2, ...) abort range
  echo a:a
endfunction
function! Foo
"---
function Bar()
endfunction
function Bar
"---
function Bar()
endfunction
function! Bar
"---
function Bar()
endfunction
function
"---
function Bar()
endfunction
function /^B
"---
function Bar()
endfunction
function /^Z
"---
function Nope
"---
function! Foo() | echo 1
"---
function Foo() | echo 1
endfunction
"---
function Foo()
endfunction
function Foo()
endfunction
"---
function Foo()
endfunction
function! Foo()
  echo 2
endfunction
function Foo
"---
function Foo()
endfunction
delfunction Foo
function Foo
"---
delfunction Nope
"---
delfunction! Nope
"---
delfunction
"---
delfunction Foo Bar
"---
function Foo()
endfunction
delfunction Foo | echo 'after'
function Foo
"---
function Foo()
endfunction
delfunction Foo
delfunction Foo
"---
function bad()
endfunction
"---
function! 1Bad()
endfunction
"---
function Dup(a, a)
endfunction
"---
function D(a = 1, b)
endfunction
"---
function F9(firstline)
endfunction
"---
function F9(lastline)
endfunction
"---
function F10(a b)
endfunction
"---
function F11(a,)
endfunction
"---
function F11(a ,b)
endfunction
"---
function F12(...)
endfunction
function F12
"---
function F12(a, ...)
endfunction
function F12
"---
function F12(...) abort
endfunction
function F12
"---
function F13(a, ...) dict closure abort
endfunction
"---
function F13(a) dict abort range
endfunction
function F13
"---
function F14() foo
endfunction
"---
function F15(
"---
function F15(a
"---
function F16
"---
function F16 (a)
endfunction
function F16
"---
function F17(a, b = 1 + 2, c = [1, 2])
endfunction
function F17
"---
function F17(a, b = )
endfunction
"---
function F17(a, b = 1 +)
endfunction
"---
function F17(a = 1  ,  b = 2  )
endfunction
function F17
"---
set ts=8
function! F18()
  " comment
  let x = 1 " trailing
	echo x
endfunction
function F18
"---
function! F19()
  echo 'a' |  echo 'b'
endfunction
function! F19
"---
function! F20()
endfunction " comment
function F20
"---
function! F20()
endfunction | echo 'after'
"---
function! F20()
endfunction!
function F20
"---
function! F20()
  :endfunction
function F20
"---
function! F20()
  :  endf
function F20
"---
function! F20()
endfun
function F20
"---
function! F20()
endfu
function F20
"---
function! F20()
endf
function F20
"---
function! F20()
end
endfunction
"---
function! F21()
  function! Inner()
    echo 'in'
  endfunction
endfunction
function F21
function Inner
"---
function! F21()
  function! Inner()
  endfunction
  if 1
    function! Inner2()
    endfunction
  endif
endfunction
function F21
"---
function! F22()
  let x =<< END
endfunction
END
  echo x
endfunction
function F22
"---
function! F22()
  let x =<< trim END
    endfunction
    END
endfunction
function F22
"---
function! F22()
  let [a, b] =<< eval END
endfunction
END
endfunction
function F22
"---
function! F23()
  append
endfunction
.
endfunction
function F23
"---
function! F23()
  insert
endfunction
.
endfunction
function F23
"---
function! F23()
  3change!
endfunction
.
endfunction
function F23
"---
function! F23()
  appendix
endfunction
function F23
"---
function! F24()
  lua << EOF
endfunction
EOF
endfunction
function F24
"---
function! F24()
  python << trim EOF
    endfunction
    EOF
endfunction
function F24
"---
function! F24()
  lua <<
endfunction
.
endfunction
function F24
"---
function F25()
  echo 1
"---
function F25()
  let x =<< END
  echo 1
"---
function F25()
  append
line
"---
function F26()
  echo 1 |
\ echo 2
endfunction
function F26
"---
function F26()
  echo 1
\ . 2
  echo 3
endfunction
function F26
"---
function F26()
  echo 'a'
"\ comment
\ . 'b'
endfunction
function F26
"---
function! s:Loc(x)
  return a:x
endfunction
function s:Loc
function! <SID>Loc2()
endfunction
function <SID>Loc2
"---
function! s:Loc(x)
endfunction
delfunction s:Loc
function s:Loc
"---
function! <SNR>5_Foo()
endfunction
function <SNR>5_Foo
"---
function! g:Glob()
endfunction
function Glob
function g:Glob
"---
function! a:Bad()
endfunction
"---
function! b:Bad()
endfunction
"---
function! Foo#Bar()
endfunction
"---
function! Foo:Bar()
endfunction
"---
function! Fo{'o'}()
endfunction
function Foo
"---
let n = 'Cur'
function! {n}ly()
endfunction
function Curly
"---
function! F(
endfunction
"---
function! F)()
endfunction
"---
function! ()
endfunction
"---
function! 
endfunction
"---
function! !()
endfunction
"---
function! F()
endfunction
function! F
function F extra
"---
function! F()
  echo 1
endfunction
function F | echo 'next'
"---
function! F()
  echo 1
endfunction
function F " comment
"---
function! F()
endfunction
let F = 1
"---
let F = 1
function! F()
endfunction
"---
function! F()
endfunction
let x = F
"---
if 0
  function! Skipped()
    echo 1
  endfunction
endif
function Skipped
"---
if 0
  function! Skipped()
    function! In()
    endfunction
  endfunction
endif
function In
"---
if 0
  function Skipped(
  endfunction
endif
echo 'ok'
"---
if 1
  function! Taken()
    echo 1
  endfunction
endif
function Taken
"---
let i = 0
while i < 2
  function! Loop()
    echo 'loop'
  endfunction
  let i += 1
endwhile
function Loop
"---
for i in [1, 2]
  function! L2()
    echo 1
  endfunction
endfor
function L2
"---
execute "function! E1()\n  echo 1\nendfunction"
function E1
"---
execute "function! E1()\n  echo 1\nendfunction | echo 'next'"
"---
execute "function! E1()\n  echo 1\nendfunction\necho 'next'"
"---
execute "function! E1()\n  echo 1"
"---
execute 'function! E2()'
  echo 2
endfunction
function E2
"---
endfunction
"---
endfunction | echo 1
"---
if 0
  endfunction
endif
"---
set ts=8
function! T()
	echo 'tab'
endfunction
function T
"---
function! W()   
  echo 1   
endfunction   
function W
"---
function! Q()
  echo "a\"b"
endfunction
function Q
"---
function! Big()
  echo 1
  echo 2
  echo 3
  echo 4
  echo 5
  echo 6
  echo 7
  echo 8
  echo 9
  echo 10
  echo 11
endfunction
function Big
"---
function! Big()
  echo 1
\ . 2
  echo 3
  echo 4
  echo 5
  echo 6
  echo 7
  echo 8
  echo 9
  echo 10
  echo 11
endfunction
function Big
"---
function! Z()
endfunction
function Z
function! Z
"---
function! R(a) range
endfunction
function R
"---
function! Dd(a) dict
endfunction
function Dd
"---
function! Ab(a) abort
endfunction
function Ab
"---
function! Ra(a)   abort   range   
endfunction
function Ra
"---
function! Ra(a) abortrange
endfunction
"---
function! Ra(a) rangeabort
endfunction
"---
function! Sp( a , b )
endfunction
"---
function! Sp(a,b,...)
endfunction
function Sp
"---
function! Sp(a, ..., b)
endfunction
"---
function! Sp(..., a)
endfunction
"---
function! Sp(....)
endfunction
"---
function! Sp(a, a1, _b, B2)
endfunction
function Sp
"---
function! Sp(a-b)
endfunction
"---
function! Sp(é)
endfunction
