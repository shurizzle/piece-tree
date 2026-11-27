if 1
  echo nosuch
  echo 'after'
endif
echo 'end'
"---
echo nosuch | echo 1
"---
echo nosuch
echo 2
"---
finish | echo 1
echo 2
"---
echo 1 | finish
echo 2
"---
if 1
  finish
endif
echo 'not reached'
"---
while 1 | break | endwhile | echo 'done'
"---
for i in [1, 2, 3] | if i == 2 | continue | endif | echo i | endfor
"---
let c = 0
for i in [1, 2]
  for j in [1, 2, 3]
    if j == 2
      continue
    endif
    let c += 1
  endfor
endfor
echo c
"---
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
echo 'out' i
"---
set ts=4 \| echo 5
"---
echo "a|b" | echo 'c|d'
"---
normal Aabc
s/b/X/ | s/c/Y/ | echo getline(1)
"---
normal Aaxb
s/x/\|/ | echo getline(1)
"---
normal Aab
s/a/X/ " comment | echo 1
echo getline(1)
"---
normal Aab
s/a/X/g 1 | echo getline(1)
"---
normal Aab
s/a | echo 1
echo getline(1)
"---
normal Aab
sort u | echo 1
"---
normal Aab
sort /a/ | echo 1
"---
normal Aab
sort " comment | echo 1
echo 2
"---
normal
"---
normal! Ax
echo getline(1)
"---
set ts=8 " comment
echo &ts
"---
if 1 " comment
  echo 1
else " comment
  echo 2
endif " comment
"---
let x = 1 " comment
echo x
"---
call add([], 1) " comment
echo 'ok'
"---
echo 1 | echo 2 " c
"---
execute "if 1"
echo 'inside'
endif
echo 'after'
"---
execute 'echo 1 | echo 2'
"---
execute 'finish'
echo 'next'
"---
echoerr 'x' | echo 'after'
"---
echoerr 'x'
echo 'after'
"---
3
"---
$
"---
1,2
"---
|
"---
foo
"---
 foo | echo 1
"---
echo 1 | foo | echo 2
"---
3foo
"---
endif foo
"---
close foo
"---
3echo 1
"---
echo! 1
"---
if 0 | foo | endif | echo 'ok'
"---
if 0 | echo nosuch | endif | echo 'ok'
"---
if 0 | let x = ( | endif | echo 'ok'
"---
if 0 | s/a|b/c/ | echo 1 | endif | echo 2
"---
if 0 | normal x | echo 1 | endif | echo 2
"---
if 0 | echo 1 | elseif 1 | echo 'ei' | endif
"---
if 0 | elseif nosuch | endif
echo 'ok'
"---
if 1 | echo 1 | elseif nosuch | echo 2 | endif
"---
if 0
  if 1 | echo 'inner' | endif
else
  echo 'else'
endif
"---
if 1
  if 0
    echo 'a'
  elseif 1
    echo 'b'
  else
    echo 'c'
  endif
endif
"---
echo 1 | endif | echo 2
"---
if 1 | echo 1 | endwhile | echo 2 | endif
"---
while 1 | echo 1 | endfor
"---
for i in [1] | echo i | endwhile
"---
while 0 | endwhile | endwhile
"---
let l = [1, 2, 3]
for i in l
  if i == 1
    call remove(l, 0)
  endif
  echo i
endfor
"---
for i in 'ab' | echo i | endfor
"---
for [a, b] in [[1, 2]] | echo a b | endfor
"---
for [a; b] in [[1, 2, 3]] | echo a b | endfor
"---
for i in [1, 2] | break | endfor | echo i
"---
let s = 0
for i in range(3)
  let s += i
endfor
echo s i
"---
echo 1 |
echo 2
"---
echo 1 | " comment
echo 2
"---
let l = [1,
\ 2]
echo l
"---
let l = [1,
"\ comment
\ 2]
echo l
"---
let l = [1,

\ 2]
echo l
"---
echo "a\
\b"
"---
echo 'a' |
\ echo 'b'
"---
  echo   'x'   
"---
:echo 'colon'
"---
: : echo 'colons'
"---
echo 1
"comment
echo 2
"---
 " leading comment
echo 'x'
"---
echo 'a' | " c
echo 'b'
"---
execute "echo 1\necho 2"
"---
execute "echo 1 | echo 2\necho 3"
"---
execute "let x = 1\necho x"
"---
execute "if 1\necho 'in'\nendif"
"---
set foo
"---
set nofoo
"---
set foo=1
"---
set foo?
"---
set ts=abc
"---
set ts=
"---
set ts=-1
"---
set ts=0
"---
set ts=1000
"---
set sw=33
"---
set ts=8 ts?
"---
set ts=8 ts!
"---
set nots
"---
set so=3 so?
"---
set report=5 report?
"---
set report=abc
"---
set ts=4 | set ts?
"---
set ts:4
"---
set ts=8 ts+=1 ts?
"---
set ts=8 ts-=1 ts?
"---
set ts=8 ts^=2 ts?
"---
set list! list?
"---
set ts=4 sw=2 ts? sw?
"---
let l = [1, 2, 3, 4]
for i in l
  if i == 2
    call remove(l, 0)
  endif
  echo i
endfor
"---
let l = [1, 2, 3, 4]
for i in l
  if i == 2
    call remove(l, 2)
  endif
  echo i
endfor
"---
let l = [1, 2, 3]
for i in l
  if i == 1
    call insert(l, 9, 0)
  endif
  echo i
endfor
"---
let l = [1, 2, 3]
for i in l
  if i == 1
    call insert(l, 9, 2)
  endif
  echo i
endfor
"---
let l = [1, 2, 3]
for i in l
  if i == 3
    call add(l, 4)
  endif
  echo i
endfor
"---
let l = [1, 2, 3]
for i in l
  if i == 1
    call add(l, 4)
  endif
  echo i
endfor
"---
let l = [1, 2, 3, 4, 5]
for i in l
  if i == 2
    call remove(l, 0, 2)
  endif
  echo i
endfor
"---
let l = [1, 2, 3]
for i in l
  if i == 1
    call extend(l, [7, 8], 1)
  endif
  echo i
endfor
"---
let l = [1, 2, 3]
for i in l
  if i == 1
    unlet l[0]
  endif
  echo i
endfor
"---
for c in 'ab'
  echo c
endfor
"---
for [a, b] in [[1, 2], [3, 4]]
  echo a b
endfor
"---
for x in []
  echo x
endfor
echo 'done'
"---
for x in 5
  echo x
endfor
"---
let l = [3, 1, 2]
for i in l | echo i | if i == 3 | call sort(l) | endif | endfor
echo l
"---
let l = [1, 2, 3, 4]
for i in l | echo i | if i == 1 | call reverse(l) | endif | endfor
"---
let l = [1, 2, 3, 4]
let n = 0
for i in l | echo i | let n += 1 | if n == 2 | call reverse(l) | endif | endfor
"---
let l = [4, 2, 3, 1]
for i in l | echo i | if i == 2 | call sort(l, 'n') | endif | endfor
"---
let l = [1, 1, 2, 2, 3]
for i in l | echo i | if i == 1 | call uniq(l) | endif | endfor
echo l
"---
let l = [1, 2, 2, 3, 3]
for i in l | echo i | if i == 2 | call uniq(l) | endif | endfor
"---
let l = [1, 2, 3]
for i in l | echo i | if i == 1 | call filter(l, 'v:val != 2') | endif | endfor
"---
let l = [1, 2, 3, 4]
for i in l | echo i | if i == 1 | let l[1:2] = [9, 8] | endif | endfor
"---
let l = [1, 2, 3]
for i in l | echo i | if i == 1 | let l = [7, 8] | endif | endfor
"---
let l = [[1], [2], [3]]
for i in l | echo i | if i == [1] | call flatten(l) | endif | endfor
"---
let l = ['b', 'a', 'c']
for i in l | echo i | if i == 'a' | call sort(l, 'x') | endif | endfor
"---
echo "a​b" " |­|܏|‏|‪|⁠|⁯|﻿|￹|￾|￿| |Ā"
"---
echon "a​" "\U0001f600" "\U000e0001" "\U0010ffff"
"---
echomsg "x​y"
"---
let g:s = "q​r"
echo g:s string(g:s) len(g:s)
"---
let l = [1, 2, 3]
for i in l | echo i | if i == 1 | call remove(l, 1, -1) | call add(l, 5) | endif | endfor
echo l
"---
set shm?
set shm+=T
set shm?
set shm-=lt
set shm?
set shm^=a
set shm?
"---
set shm-=Z
set shm?
set shm+=lll
set shm?
set shm=
set shm?
"---
set shm=xyz
"---
set shm+=Q
"---
set shortmess=a
set shm+=m | set shm?
echo &shm
let &shm = 'tT'
echo &shortmess
let &shm = 'Z'
