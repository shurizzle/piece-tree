"keytyped
function! Foo()
\  return 1
\endfunction
echo Foo()
"---
"keytyped
function! Foo()
\  echo nosuch
\endfunction
call Foo()
"---
"keytyped
function! Foo()abort
\  echo nosuch
\endfunction
call Foo()
echo 'next'
"---
"keytyped
function! Foo()
\  call Bar()
\endfunction
function! Bar()
\  echo nosuch
\endfunction
call Foo()
"---
"keytyped
function! Foo(a)
\  return a:a * 2
\endfunction
echo Foo(21)
echo Foo()
echo Foo(1, 2)
"---
"keytyped
function! Foo()range
\  echo [a:firstline, a:lastline]
\endfunction
call Foo()
"---
"keytyped
return 1
return
"---
"keytyped
finish
"---
"keytyped
function! Foo()
\  finish
\endfunction
call Foo()
"---
"keytyped
call Nope()
call Nope(1
call Nope
"---
"keytyped
function! Foo()
\  return 1
\endfunction
function Foo
delfunction Foo
function Foo
"---
"keytyped
function! Foo()
\  echo 1
\endfunction
call Foo() | call Foo()
"---
"keytyped
function! Foo()
\  echo 1
\endfunction
call Foo() | echo 2
"---
"keytyped
call Nope() | echo 2
"---
"keytyped
function! Foo()
\  let x = 1
\  echo l:x
\endfunction
call Foo()
echo x
"---
"keytyped
function! Foo()
\  unknowncmd
\endfunction
call Foo()
"---
"keytyped
function! Foo()
\  echo 1
\endfunction
function! Foo()
\  echo 2
\endfunction
call Foo()
"---
"keytyped
function! Foo()
\  echo 1
\endfunction
function! Foo()
\  echo 2
\endfunction
call Foo()
