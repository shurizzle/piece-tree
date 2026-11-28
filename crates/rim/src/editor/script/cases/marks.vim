set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal d2w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal de"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 3x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 2yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal yw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal y$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal P"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal yyp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal yyP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ywp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 3p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal xp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ddP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal Oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ix\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ixy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal Aab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal Iab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal cwfoo\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ccx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal C"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal Sx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal s"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal sab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 3rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 3~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal g~~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal guu"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal gUU"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal gUw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal g~w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 3J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal >>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal 3>>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal >j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal >G"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ixy\<Esc>."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal x."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal o\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ostuff\\<CR>more\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ixx\\<CR>yy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal ab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal Rab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dtx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dfx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
silent execute "normal d/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
silent execute "normal y/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal >ip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal yip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal d}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal d{"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal d)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal d("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal y)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal y("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal y}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal c)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
execute "normal c}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal d2w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal de"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 3x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 2yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal yw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal y$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal P"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal yyp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal yyP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ywp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 3p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal xp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ddP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal Oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ix\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ixy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal Aab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal Iab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal cwfoo\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ccx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal C"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal Sx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal s"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal sab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 3rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 3~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal g~~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal guu"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal gUU"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal gUw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal g~w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 3J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal >>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal 3>>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal >j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal >G"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ixy\<Esc>."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal x."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal o\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ostuff\\<CR>more\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ixx\\<CR>yy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal ab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal Rab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dtx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dfx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
silent execute "normal d/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
silent execute "normal y/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal >ip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal yip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal d}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal d{"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal d)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal d("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal y)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal y("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal y}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal c)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G8|"
execute "normal c}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal d2w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal de"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 3x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 2yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal yw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal y$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal P"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal yyp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal yyP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ywp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 3p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal xp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ddP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal Oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ix\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ixy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal Aab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal Iab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal cwfoo\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ccx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal C"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal Sx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal s"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal sab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 3rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 3~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal g~~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal guu"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal gUU"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal gUw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal g~w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 3J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal >>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal 3>>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal >j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal >G"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ixy\<Esc>."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal x."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal o\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ostuff\\<CR>more\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ixx\\<CR>yy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal ab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal Rab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dtx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dfx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
silent execute "normal d/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
silent execute "normal y/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal >ip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal yip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal d}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal d{"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal d)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal d("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal y)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal y("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal y}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal c)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
execute "normal c}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal d2w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal de"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 3x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 2yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal yw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal y$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal P"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal yyp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal yyP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ywp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 3p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal xp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ddP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal Oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ix\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ixy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal Aab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal Iab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal cwfoo\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ccx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal C"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal Sx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal s"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal sab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 3rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 3~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal g~~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal guu"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal gUU"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal gUw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal g~w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 3J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal >>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal 3>>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal >j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal >G"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ixy\<Esc>."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal x."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal o\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ostuff\\<CR>more\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ixx\\<CR>yy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal ab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal Rab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dtx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dfx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
silent execute "normal d/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
silent execute "normal y/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal >ip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal yip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal d}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal d{"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal d)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal d("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal y)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal y("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal y}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal c)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 3G5|"
execute "normal c}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal d2w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal de"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 3x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 2yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal yw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal y$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal P"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal yyp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal yyP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ywp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 3p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal xp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ddP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal Oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ix\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ixy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal Aab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal Iab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal cwfoo\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ccx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal C"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal Sx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal s"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal sab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 3rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 3~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal g~~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal guu"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal gUU"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal gUw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal g~w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 3J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal >>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal 3>>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal >j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal >G"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ixy\<Esc>."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal x."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal o\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ostuff\\<CR>more\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ixx\\<CR>yy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal ab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal Rab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dtx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dfx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
silent execute "normal d/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
silent execute "normal y/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal >ip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal yip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal d}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal d{"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal d)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal d("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal y)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal y("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal y}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal c)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 6G1|"
execute "normal c}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 2dd"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal d2w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal de"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal d$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal D"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dG"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dgg"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 3x"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 2yy"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal yw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal y$"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal yj"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal yk"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal P"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal yyp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal yyP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ywp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 3p"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal xp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ddp"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ddP"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal Oabc\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ix\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ixy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal Aab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal Iab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal cwfoo\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ccx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal C"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal Sx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal s"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal sab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 3rX"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 3~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal g~~"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal guu"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal gUU"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal gUw"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal g~w"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 3J"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal gJ"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal >>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal <<"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal 3>>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal >j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal <j"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal >G"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ixy\<Esc>."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dd."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal x."
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal o\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ostuff\\<CR>more\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ixx\\<CR>yy\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal ab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal Rab\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dtx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dfx"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
silent execute "normal d/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
silent execute "normal y/four\<CR>"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal >ip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal yip"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal dap"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal d}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal d{"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal d)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal d("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal y)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal y("
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal y}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal c)"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 7G|"
execute "normal c}"
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
y
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1,2y
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2,3m0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2m$
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1,2t.
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1t0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2,3>
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2,3<
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
>>
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
j
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1,3j
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
j!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
%s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1,2s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
g/e/d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
g/four/m0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
normal dd
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2,3normal x
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
pu!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
0pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
$pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
pu a
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2,3pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
=
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
p
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
k a
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1,2d|2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
sort
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
sort!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
1,3sort
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
retab
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
3,4co.
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 1G1|"
let @a="x\ny\n"
execute "normal yl"
2,3co0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
y
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1,2y
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2,3m0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2m$
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1,2t.
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1t0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2,3>
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2,3<
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
>>
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
j
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1,3j
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
j!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
%s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1,2s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
g/e/d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
g/four/m0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
normal dd
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2,3normal x
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
pu!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
0pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
$pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
pu a
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2,3pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
=
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
p
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
k a
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1,2d|2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
sort
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
sort!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
1,3sort
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
retab
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
3,4co.
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 2G3|"
let @a="x\ny\n"
execute "normal yl"
2,3co0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1,2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
y
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1,2y
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2,3m0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2m$
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1,2t.
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1t0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2,3>
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2,3<
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
>>
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
j
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1,3j
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
j!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
%s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1,2s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
g/e/d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
g/four/m0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
normal dd
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2,3normal x
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
pu!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
0pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
$pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
pu a
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2,3pu
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
=
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
p
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
k a
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1,2d|2d
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
sort
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
sort!
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
1,3sort
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
retab
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
3,4co.
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
one (two) three. four five.  Six seven!
  four {five} six
   seven  eight

nine ten. eleven
last line here
.
execute "normal 5G|"
let @a="x\ny\n"
execute "normal yl"
2,3co0
echo line('.') col('.') string(getline(1,'$')) string(line("'[")) string(col("'[")) string(line("']")) string(col("']")) string(line("'.")) string(col("'."))
