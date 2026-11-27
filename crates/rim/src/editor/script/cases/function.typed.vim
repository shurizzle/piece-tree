"keytyped
function! Foo(a)
\  echo a:a
\endfunction
function Foo
"---
"keytyped
function! Foo(a)
\endfunction
function Foo
"---
"keytyped
function! Foo()
\  echo 1
\  if 1
\    echo 2
\  endif
\endfunction
function! Foo
"---
"keytyped
function! Foo()
\  function! Inner()
\  endfunction
\endfunction
function Inner
"---
"keytyped
function! Foo()
\  let x =<< END
\endfunction
\END
\endfunction
function Foo
"---
"keytyped
function! Foo()
\endfunction
function Foo() | echo 1
"---
"keytyped
function Foo()
\echo 1
"---
"keytyped
function! Foo()
\endfunction | echo 'after'
"---
"keytyped
function! Foo()
\  append
\endfunction
\.
\endfunction
function Foo
"---
"keytyped
execute "function! E1()\n  echo 1\nendfunction"
function E1
"---
"keytyped
execute 'function! E2()'
\  echo 2
\endfunction
function E2
"---
"keytyped
function Foo()
\endfunction
function Foo()
"---
"keytyped
function Foo()
\endfunction
function Foo() | echo 1
"---
"keytyped
function Foo()
\endfunction
function Foo() abort
"---
"keytyped
function! Foo() | echo 1
"---
"keytyped
function! Foo() abort | echo 1
"---
"keytyped
function bad()
"---
"keytyped
function! Foo(a, a)
"---
"keytyped
function! Foo(
"---
"keytyped
function bad()