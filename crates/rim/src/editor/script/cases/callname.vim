call {-> add(1, 2)}()
"---
call {x -> x}(1)
"---
call {x}()
"---
let x = 'F'
function! F()
echo 'F'
endfunction
call {x}()
"---
function! F()
echo 'F'
endfunction
call {'F'}()
"---
call {-> 1}() | echo 'next'
"---
silent! call {-> 1}() | echo 'next'
"---
try | call {-> 1}() | catch | echo 'c' | endtry
"---
call {x}{y}()
"---
let x = 'A'
let y = 'dd'
call {x}{y}([], 1)
"---
call {}()
"---
call {1}()
"---
call {'F'}
"---
call {
"---
call {-> }()
"---
let Fn = {-> 1}
call Fn()
"---
let Fn = {-> 1}
call {Fn}()
