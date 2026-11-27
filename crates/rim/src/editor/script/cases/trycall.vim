let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call add(1, 2) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call add(1, 2)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call add(1, 2) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call add(1, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call add(1, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call add(1, 2) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call strlen([]) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call strlen([])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call strlen([]) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call strlen([]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call strlen([]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call strlen([]) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call add([], 2, 3) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call add([], 2, 3)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call add([], 2, 3) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call add([], 2, 3) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call add([], 2, 3) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call add([], 2, 3) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call len() | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call len()
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call len() | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call len() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call len() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call len() | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call nosuch() | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call nosuch()
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call nosuch() | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call nosuch() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call nosuch() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call nosuch() | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | echo add(1, 2) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  echo add(1, 2)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | echo add(1, 2) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
echo add(1, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! echo add(1, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! echo add(1, 2) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | let x = add(1, 2) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  let x = add(1, 2)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | let x = add(1, 2) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
let x = add(1, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! let x = add(1, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! let x = add(1, 2) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call remove([1], 5) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call remove([1], 5)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call remove([1], 5) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call remove([1], 5) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call remove([1], 5) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call remove([1], 5) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call map([1], 'x') | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call map([1], 'x')
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call map([1], 'x') | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call map([1], 'x') | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call map([1], 'x') | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call map([1], 'x') | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call filter([1], 'throw 1') | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call filter([1], 'throw 1')
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call filter([1], 'throw 1') | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call filter([1], 'throw 1') | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call filter([1], 'throw 1') | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call filter([1], 'throw 1') | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call add(l, 2) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call add(l, 2)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call add(l, 2) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call add(l, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call add(l, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call add(l, 2) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call extend(l, [1]) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call extend(l, [1])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call extend(l, [1]) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call extend(l, [1]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call extend(l, [1]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call extend(l, [1]) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call sort(l) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call sort(l)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call sort(l) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call sort(l) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call sort(l) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call sort(l) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call F() | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call F()
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call F() | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call F() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call F() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call F() | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call G() | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call G()
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call G() | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call G() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call G() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call G() | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call H() | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call H()
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call H() | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call H() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call H() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call H() | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call range(1, 2, 0) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call range(1, 2, 0)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call range(1, 2, 0) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call range(1, 2, 0) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call range(1, 2, 0) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call range(1, 2, 0) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call str2nr([]) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call str2nr([])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call str2nr([]) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call str2nr([]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call str2nr([]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call str2nr([]) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call repeat('a', []) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call repeat('a', [])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call repeat('a', []) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call repeat('a', []) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call repeat('a', []) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call repeat('a', []) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call function('nosuch') | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call function('nosuch')
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call function('nosuch') | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call function('nosuch') | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call function('nosuch') | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call function('nosuch') | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call substitute(1, 2, [], 3) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call substitute(1, 2, [], 3)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call substitute(1, 2, [], 3) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call substitute(1, 2, [], 3) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call substitute(1, 2, [], 3) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call substitute(1, 2, [], 3) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call printf('%d', []) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call printf('%d', [])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call call('add', [1, 2]) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call call('add', [1, 2])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call call('add', [1, 2]) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call call('add', [1, 2]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call call('add', [1, 2]) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call call('add', [1, 2]) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call call('F', []) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call call('F', [])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call call('F', []) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call call('F', []) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call call('F', []) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call call('F', []) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call function('add')(1, 2) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call function('add')(1, 2)
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call function('add')(1, 2) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call function('add')(1, 2) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call d.f() | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call d.f()
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call d.f() | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call d.f() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call d.f() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call F() | call G() | catch | echo 'caught' | endtry
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
for i in [1, 2]
try | call add(1, 2) | catch | echo 'caught' i | endtry
endfor
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | try | call add(1, 2) | catch | echo 'inner' | endtry | catch | echo 'outer' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | try | call add(1, 2) | finally | echo 'fin' | endtry | catch | echo 'outer' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call add(1, 2) | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call add(1, 2)
echo 'end'

"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call printf('%d', []) | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call printf('%d', [])
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call printf('%d', []) | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call printf('%d', []) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call printf('%d', []) | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call printf('%d', []) | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call {-> add(1, 2)}() | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try
  call {-> add(1, 2)}()
catch
  echo 'caught' v:exception
endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | call {-> add(1, 2)}() | catch | echo 'caught' | finally | echo 'fin' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
call {-> add(1, 2)}() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
silent! call {-> add(1, 2)}() | echo 'same line'
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
try | silent! call {-> add(1, 2)}() | echo 'inside' | catch | echo 'caught' | endtry
echo 'end'
"---
let l = [1]
lockvar l
function! F()
call add(1, 2)
endfunction
function! G() abort
call add(1, 2)
endfunction
function! H()
throw 'x'
endfunction
let d = {}
function! d.f()
call add(1, 2)
endfunction
function! W() abort
try | call add(1, 2) | catch | echo 'caught' | endtry
echo 'after'
endfunction
call W()
