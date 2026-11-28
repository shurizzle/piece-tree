set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "2d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "3d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "2,3d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "%d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "1d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "8d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "4d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "3s/^/xx/"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "3s/$/yy/"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "5s/eta/E/"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "3put ='n'"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "0put ='n'"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "$put ='n'"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "m0"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "2m$"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "1,2m$"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "4,5m0"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "2,3j"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "1,3j"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "3,4>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "undo"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "2,6d | undo | redo"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 2GA\<CR>x\<Esc>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 3GI\<CR>\<Esc>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 5Gdd"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 3G2dd"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 6GJ"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 1GOnew\<Esc>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 8Gonew\<Esc>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 6Gx"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 2Gdw"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 5Gddp"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 6Gyyp"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 3Gvjd"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 2GVjd"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 5Gcc\<Esc>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 5Gccx\<Esc>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "normal! 4Gox\<Esc>"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "2,4normal! dd"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "g/a/d"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "g/e/s/e/E/"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "sort"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "sort!"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "%s/\\n//"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "2,3s/\\n/-/"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "1"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta gamma
delta epsilon
zeta

eta theta iota
kappa lambda
mu nu xi
omicron pi
.
execute "normal! gg"
execute "normal! 3G4|"
execute "normal! 6G2|"
execute "normal! 1G"
execute "normal! 8G3|"
execute "normal! 2GA!\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 5G0ix\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 7GAz\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
call feedkeys("\<Esc>", "xt")
execute "echo 1"
let g:o = [] | for i in range(6) | execute "normal! \<C-o>" | call add(g:o, [line("."), col(".")]) | endfor | echo "J" string(g:o) | let g:o = [] | for i in range(3) | execute "normal! g;" | call add(g:o, [line("."), col(".")]) | endfor | echo "C" string(g:o) string(getline(1,"$"))
