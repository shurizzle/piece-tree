function! F()
  try
    throw 'x'
  finally
    echo 'cleanup'
  endtry
endfunction
try
  call F()
catch
  echo 'outer' v:exception
endtry
"---
function! F()
  for i in range(3)
    try
      if i == 1 | continue | endif
      echo 'i' i
    finally
      echo 'f' i
    endtry
  endfor
endfunction
call F()
"---
try
  try
    throw 'a'
  finally
    throw 'b'
  endtry
catch
  echo v:exception
endtry
"---
try
  try
    echo nosuch
  finally
    echo 'fin'
  endtry
catch
  echo v:exception
endtry
"---
try
  try
    throw 'a'
  finally
    echo nosuch
  endtry
catch
  echo v:exception
endtry
"---
try
  try
    throw 'a'
  catch /a/
    echo nosuch
  endtry
catch
  echo v:exception
endtry
"---
function! F() abort
  try
    throw 'x'
  catch
    echo 'F catch'
  endtry
  return 1
endfunction
echo F()
"---
function! F() abort
  echo nosuch
  return 1
endfunction
try
  echo F()
catch
  echo 'c' v:exception
endtry
"---
function! F() abort
  echo nosuch
  return 1
endfunction
echo F()
echo 'next'
"---
function! F()
  echo nosuch
  return 1
endfunction
echo F()
echo 'next'
"---
try
  echo 1
  throw 'x'
  echo 2
catch
  echo 3
endtry
echo 4
"---
let g:r = []
function! Cl()
  call add(g:r, 'cleanup')
endfunction
function! F()
  try
    return 'val'
  finally
    call Cl()
  endtry
endfunction
echo F() g:r
"---
function! F()
  try
    try
      return 'inner'
    finally
      echo 'f1'
    endtry
  finally
    echo 'f2'
  endtry
  return 'not'
endfunction
echo F()
"---
function! F()
  try
    return 'a'
  finally
    throw 'in finally'
  endtry
endfunction
try
  echo F()
catch
  echo v:exception
endtry
"---
let i = 0
while i < 5
  let i += 1
  try
    if i == 3 | throw 'three' | endif
  catch /three/
    echo 'caught three'
    break
  endtry
endwhile
echo i
"---
for i in [1, 2, 3]
  try
    if i == 2 | continue | endif
    echo i
  finally
    echo 'fin' i
  endtry
endfor
"---
try
  throw 'x'
catch
  echo v:exception
endtry
echo v:exception
"---
try
  echo 'a'
catch
endtry
catch
"---
try
  while 1
    try
      break
    endwhile
  endtry
endtry
"---
try
  endwhile
endtry
"---
while 1
  try
    break
  endtry
endwhile
echo 'ok'
"---
function! F()
  try
    throw 'x'
  endtry
endfunction
call F()
echo 'after'
"---
function! F()
  throw 'x'
endfunction
call F()
echo 'after'
"---
function! F()
  throw 'x'
endfunction
function! G()
  call F()
endfunction
call G()
echo 'after'
"---
try
  silent! call nosuch()
  echo 'after'
catch
  echo 'c'
endtry
"---
silent! throw 'x'
echo 'after'
"---
silent! try
  throw 'x'
catch
  echo 'c'
endtry
"---
try
  execute 'throw "e"' | echo 'same'
catch
  echo v:exception
endtry
"---
try
  call function('nosuch')
catch
  echo v:exception
endtry
"---
try
  let l = [1, 2]
  let l[5] = 1
catch
  echo v:exception
endtry
"---
try
  let x = 1 / 0
  echo x
catch
  echo v:exception
endtry
"---
try
  echo 1 | throw 'x' | echo 2
catch
  echo 'c'
endtry
