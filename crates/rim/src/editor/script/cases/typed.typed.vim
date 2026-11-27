echo nosuch
echo 1
"---
foo
"---
echo 1 | endif | echo 2
"---
endif
"---
close foo
"---
set ts=4 \| echo 5
"---
echo 'a' | 3
"---
silent echo 1
echo 2
"---
silent! echo nosuch
echo 3
"---
silent! echo nosuch | echo 1
"---
silent echo nosuch
echo 4
"---
if 1 | echo 'x' | endif
"---
while 0 | endwhile
"---
for i in [1, 2] | echo i | endfor
"---
let x = 1 | echo x
"---
execute 'echo 1 | echo 2'
"---
normal ix
echo getline(1)
"---
echoerr 'e1' | echo 'after'
"---
echo 1 " c
"---
echo 'a' | echo nosuch | echo 'b'
echo 'c'
"---
vertical echo 1
"---
keepjumps echo 1
"---
keeppatterns echo 2
"---
topleft echo 3
"---
lockmarks echo 4
"---
verbose echo 5
"---
hide echo 6
"---
noautocmd echo 7
"---
unsilent echo 8
"---
silent echo 1 | echo 2
"---
silent! echo 1 | echo nosuch | echo 3
"---
3silent echo 1
"---
silent
"---
silent! 
"---
 silent!echo 1
"---
echom "ciao" | echom "ciao" | echom "ciao"
"---
echo 1 | echo 2 | echon 3 | echon 4 | echo 5
"---
echom 'a' | echo 'b' | echoerr 'c' | echon 'd' | echo 'e'
"---
echo | echo 'x' | echo
"---
echo 1
echo 2
"---
echom 'a'
echom 'b'
"---
echon 1 | echon 2
"---
echon 1
echon 2
"---
echo 1 | echon 2
"---
echon 'x' | echo 'y' | echon 'z'
"---
echon "a\nb"
"---
normal! ia
normal! ob
g/./3,2d
echo getline(1, '$')
"---
normal! ia
normal! ob
silent 2,1d
echo getline(1, '$')
