let x = 1 | let y = x + 1 | echo y
"---
echo 'a|b' | echo 1
"---
echo "a|b" | echo 1
"---
echo 1 || 0 | echo 2
"---
let x = 1 " a comment | echo 2
echo x
"---
echo 1 " not a comment
"---
echo "a" "b"
"---
set ts=4 | echo &ts
"---
set ts=8 " comment | echo 1
echo &ts
"---
set ts=8 | " comment
echo &ts
"---
echo 1 | " comment
echo 2
"---
normal ix|y
echo getline(1)
"---
echo 'x' | normal ix|y
"---
if 1 | echo 'yes' | else | echo 'no' | endif
"---
if 0 | echo 'yes' | else | echo 'no' | endif
"---
if 0 | echo 1 | elseif 1 | echo 2 | else | echo 3 | endif
"---
let n = 0 | while n < 3 | let n += 1 | endwhile | echo n
"---
let t = 0 | for i in [1, 2, 3] | let t += i | endfor | echo t
"---
let t = 0 | for [a, b] in [[1, 2], [3, 4]] | let t += a * b | endfor | echo t
"---
let t = 0
for i in range(10)
  if i == 2 | continue | endif
  if i == 5 | break | endif
  let t += i
endfor
echo t
"---
let l = [1]
for i in l
  if i < 3 | call add(l, i + 1) | endif
endfor
echo l
"---
endif
"---
else
"---
elseif 1
"---
endwhile
"---
endfor
"---
break
"---
continue
"---
finish
echo 'not reached'
"---
if 1
echo 'open'
"---
while 0
echo 'open'
"---
for i in [1]
echo 'open'
"---
if 0 | else | else | endif
"---
if 0 | else | elseif 1 | endif
"---
for i [1] | endfor
"---
for i in 1 | endfor
"---
if nosuch | echo 1 | endif
echo 2
"---
if 0
  echo 1 | foo bar
endif
echo 2
"---
if 0 | echo 'a|b' | endif | echo 'after'
"---
if 0 | normal x | echo 1 | endif | echo 'after'
"---
if 0 | sort | echo 1 | endif | echo 'after'
"---
echo 1 | 3
"---
3
"---
3|
"---
let l = [1,
\ 2,
\ 3]
echo l
"---
let l = [1,
"\ a comment
\ 2]
echo l
"---
echo 'a' |
\ echo 'b'
"---
echo 1
"comment line
echo 2
"---
let g:a = 1
echo g:a
echo 'x' foo
"---
endif foo
"---
let x = 1
echo x
echo y
echo x
