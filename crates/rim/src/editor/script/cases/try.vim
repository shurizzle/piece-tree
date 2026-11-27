try
  throw 'boom'
catch
  echo 'caught' v:exception
endtry
"---
try
  throw 'boom'
catch /boom/
  echo 'caught' v:exception
endtry
"---
try
  throw 'boom'
catch /other/
  echo 'no'
endtry
echo 'not reached'
"---
try
  throw 'boom'
catch /other/
  echo 'no'
catch /bo/
  echo 'second'
endtry
"---
try
  throw 'boom'
catch /bo/
  echo 'first'
catch /boom/
  echo 'second'
endtry
"---
try
  echo 'in try'
catch
  echo 'not'
endtry
echo 'after'
"---
try
  echo 'in try'
finally
  echo 'finally'
endtry
"---
try
  throw 'x'
finally
  echo 'finally'
endtry
echo 'not reached'
"---
try
  throw 'x'
catch
  echo 'catch'
finally
  echo 'finally'
endtry
echo 'after'
"---
try
  echo 'in try'
catch
  echo 'catch'
finally
  echo 'finally'
endtry
"---
try
  try
    throw 'inner'
  catch /outer/
    echo 'no'
  endtry
catch /inner/
  echo 'outer caught' v:exception
endtry
"---
try
  try
    throw 'inner'
  finally
    echo 'inner finally'
  endtry
catch
  echo 'outer' v:exception
endtry
"---
try
  throw 'a'
catch
  throw 'b'
endtry
echo 'not'
"---
try
  try
    throw 'a'
  catch
    throw 'b'
  endtry
catch
  echo v:exception
endtry
"---
try
  throw 'a'
catch
  echo v:exception
  try
    throw 'b'
  catch
    echo v:exception
  endtry
  echo v:exception
endtry
"---
echo v:exception v:throwpoint
try
  throw 'x'
catch
  echo v:exception
  echo v:throwpoint
endtry
echo v:exception v:throwpoint
"---
function! F()
  throw 'inF'
endfunction
try
  call F()
catch
  echo v:exception
  echo v:throwpoint
endtry
"---
function! F()
  throw 'inF'
endfunction
function! G()
  call F()
  echo 'not reached'
endfunction
try
  call G()
catch
  echo v:exception
endtry
"---
function! F()
  try
    throw 'inF'
  catch
    echo 'caught in F'
  endtry
  return 'ret'
endfunction
echo F()
"---
function! F()
  try
    return 'from try'
  finally
    echo 'finally runs'
  endtry
endfunction
echo F()
"---
function! F()
  try
    return 'from try'
  finally
    return 'from finally'
  endtry
endfunction
echo F()
"---
function! F()
  try
    throw 'x'
  finally
    return 'finally wins'
  endtry
endfunction
echo F()
"---
function! F()
  try
    throw 'x'
  catch
    return 'from catch'
  finally
    echo 'fin'
  endtry
endfunction
echo F()
"---
function! F()
  for i in [1, 2, 3]
    try
      if i == 2
        break
      endif
    finally
      echo 'finally' i
    endtry
  endfor
  return 'done'
endfunction
echo F()
"---
function! F()
  for i in [1, 2, 3]
    try
      if i == 2
        continue
      endif
      echo 'body' i
    finally
      echo 'finally' i
    endtry
  endfor
endfunction
call F()
"---
let i = 0
while i < 3
  let i += 1
  try
    if i == 2 | break | endif
  finally
    echo 'fin' i
  endtry
endwhile
echo 'out' i
"---
try
  finish
finally
  echo 'fin'
endtry
echo 'not reached'
"---
try
  echo 1
endtry
catch
"---
catch
"---
finally
"---
endtry
"---
throw
"---
throw 'x'
"---
throw 1
"---
throw [1]
"---
throw 'Vim:x'
"---
throw 'Vim(x):y'
"---
throw 'Vimx'
"---
try
  throw 'Vim'
catch
  echo v:exception
endtry
"---
try
  echo 1
catch /[/
  echo 2
endtry
"---
try
  throw 'x'
catch /[/
  echo 2
endtry
"---
try
  throw 'x'
catch /x/ junk
  echo 2
endtry
"---
try
  throw 'x'
catch /x
  echo 2
endtry
"---
try
  throw 'x'
catch /x/ | echo 'same line'
endtry
"---
try
  throw 'x'
catch | echo 'same line'
endtry
"---
try
  throw 'x'
catch /x/ " comment
  echo 'c'
endtry
"---
try
  throw 'x'
finally | echo 'same line'
endtry
"---
try | throw 'x' | catch | echo 'one line' | endtry
"---
try
  throw 'x'
finally
finally
endtry
"---
try
  throw 'x'
finally
catch
endtry
"---
try
  echo 'a'
finally
  echo 'b'
catch
endtry
"---
try
  echo 'unclosed'
"---
try
  echo 'unclosed'
finally
  echo 'fin'
"---
if 1
  try
    echo 'x'
  endif
endtry
"---
try
  if 1
    throw 'in if'
  endif
catch
  echo v:exception
endtry
"---
try
  if 1
    echo 'x'
catch
  echo 'y'
endtry
"---
try
  while 1
    throw 'in while'
  endwhile
catch
  echo v:exception
endtry
"---
try
  for i in [1]
    throw 'in for'
  endfor
catch
  echo v:exception
endtry
"---
try
  throw 'x'
catch
endtry
try
  throw 'y'
catch
endtry
echo 'ok'
"---
if 0
  try
    throw 'x'
  catch
    echo 'c'
  finally
    echo 'f'
  endtry
endif
echo 'skipped'
"---
try
  if 0
    throw 'skipped'
  endif
  echo 'fine'
catch
  echo 'no'
endtry
"---
try
  echo nosuch
catch
  echo v:exception
  echo v:throwpoint
endtry
"---
try
  echo nosuch
catch /E121/
  echo 'E121 caught'
endtry
"---
try
  call nosuch()
catch
  echo v:exception
endtry
"---
try
  let x = [1][5]
catch
  echo v:exception
endtry
"---
try
  let [a, b] = [1]
catch
  echo v:exception
endtry
"---
try
  nosuchcommand
catch
  echo v:exception
endtry
"---
try
  echo 1 +
catch
  echo v:exception
endtry
"---
try
  echoerr 'custom'
catch
  echo v:exception
endtry
"---
try
  echoerr 'a' 'b'
catch
  echo v:exception
endtry
"---
try
  echo nosuch
  echo 'not reached in try'
catch
  echo 'caught'
endtry
echo 'after'
"---
try
  let v:count = 1
catch
  echo v:exception
endtry
"---
try
  unlet nosuch
catch
  echo v:exception
endtry
"---
try
  call add(1, 2)
catch
  echo v:exception
endtry
"---
try
  echo abs()
catch
  echo v:exception
endtry
"---
try
  echo abs(1, 2)
catch
  echo v:exception
endtry
"---
try
  echo 'a' . []
catch
  echo v:exception
endtry
"---
try
  echo {}.nokey
catch
  echo v:exception
endtry
"---
try
  let d = {}
  echo d.nokey
catch
  echo v:exception
endtry
"---
function! F()
  echo nosuch
endfunction
try
  call F()
catch
  echo v:exception
endtry
"---
function! F() abort
  echo nosuch
  echo 'not reached'
endfunction
try
  call F()
catch
  echo v:exception
endtry
"---
function! F()
  echo nosuch
  echo 'reached when not in try'
endfunction
call F()
echo 'after'
"---
function! F()
  try
    echo nosuch
  catch
    echo 'F caught' v:exception
  endtry
  echo 'F continues'
endfunction
call F()
"---
try
  silent! echo nosuch
  echo 'silent!'
catch
  echo 'not'
endtry
"---
try
  silent! throw 'x'
catch
  echo 'caught'
endtry
"---
silent! try
  echo nosuch
catch
  echo 'caught' v:exception
endtry
"---
try
  echo 'a'
  silent! echo nosuch
  echo 'b'
catch
  echo 'x'
endtry
"---
try
  execute 'throw "from execute"'
catch
  echo v:exception
endtry
"---
try
  execute 'echo nosuch'
catch
  echo v:exception
endtry
"---
try
  execute 'try | throw 1 | catch | echo 2 | endtry'
  echo 'after execute'
catch
  echo 'no'
endtry
"---
try
  call sort([3, 1], 'nosuchfunc')
catch
  echo v:exception
endtry
"---
try
  let l = map([1, 2], 'nosuch')
catch
  echo v:exception
endtry
"---
let r = []
function! Cb(k, v)
  throw 'in callback'
endfunction
try
  call map([1, 2], function('Cb'))
catch
  echo v:exception
endtry
"---
function! Thrower()
  throw 'thrown'
endfunction
try
  echo Thrower() . 'x'
catch
  echo v:exception
endtry
"---
function! Thrower()
  throw 'thrown'
endfunction
try
  let x = Thrower()
catch
  echo v:exception
endtry
echo exists('x')
"---
function! Thrower()
  throw 'thrown'
endfunction
try
  echo [1, Thrower(), 3]
catch
  echo v:exception
endtry
"---
function! Thrower()
  throw 'thrown'
endfunction
try
  if Thrower()
    echo 'yes'
  endif
catch
  echo v:exception
endtry
"---
function! Thrower()
  throw 'thrown'
endfunction
try
  for x in Thrower()
  endfor
catch
  echo v:exception
endtry
"---
function! Thrower()
  throw 'thrown'
endfunction
try
  call Thrower() | echo 'same line'
catch
  echo v:exception
endtry
"---
let d = {}
function d.f()
  throw 'from dict func'
endfunction
try
  call d.f()
catch
  echo v:exception
endtry
"---
let F = {-> 'lambda'}
try
  throw F()
catch
  echo v:exception
endtry
"---
try
  throw 'multi
line'
catch
  echo v:exception
endtry
"---
try
  throw "with\ttab"
catch
  echo v:exception
endtry
"---
try
  throw 'a' . 'b'
catch /ab/
  echo 'ab'
endtry
"---
try
  throw string([1, 2])
catch
  echo v:exception
endtry
"---
try
  throw 12
catch
  echo v:exception type(v:exception)
endtry
"---
let s:cnt = 0
function! Retry()
  let s:cnt += 1
  if s:cnt < 3
    throw 'again'
  endif
  return 'done after ' . s:cnt
endfunction
let r = ''
while r == ''
  try
    let r = Retry()
  catch /again/
    echo 'retry'
  endtry
endwhile
echo r
