set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'ad
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'ay
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'a>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'a<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'aj
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'aj!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4j!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'ap
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'a=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'a#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'anu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,100l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
.,+2l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
/six/l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
'al
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2;4l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
%l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
-1l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
+l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
,3l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3,4l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4d 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4y 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4> 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4< 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4>> 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p a 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 1x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 3 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 0 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
m .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2m .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4m .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2m .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0m .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5m .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
t .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2t .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4t .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2t .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0t .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5t .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
co .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2co .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4co .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
4,2co .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0co .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 4
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co $
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 99
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co -1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 'a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co /six/
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co 2,3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3,5co .+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2k
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
k
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
ka
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2ka
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
kaa
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3ka|echo line("'a")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
mark a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3mark b|echo line("'b")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
delete|echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d|d|d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3d|1d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d a|d A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d b|d B
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
1,2d x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y a|y A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
normal ix
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2normal ix
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,6g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/five/-1j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
3,5d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
1,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
2,10>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
2,3y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
2,10j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
2,5m0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
2,4t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
9,10t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
1,3m$
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
2,3<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=0
3,4>>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
3,5d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
1,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
2,10>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
2,3y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
2,10j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
2,5m0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
2,4t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
9,10t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
1,3m$
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
2,3<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=1
3,4>>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
3,5d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
1,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
2,10>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
2,3y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
2,10j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
2,5m0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
2,4t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
9,10t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
1,3m$
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
2,3<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=2
3,4>>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
3,5d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
1,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
2,10>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
2,3y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
2,10j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
2,5m0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
2,4t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
9,10t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
1,3m$
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
2,3<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=3
3,4>>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
3,5d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
1,4d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
2,10>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
2,3y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
2,10j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
2,5m0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
2,4t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
9,10t0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
1,3m$
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
2,3<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
set report=4
3,4>>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
2,4p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
2,3j
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
2,4>
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
2,4<
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3t.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3m$
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3nu
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3p 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
2,3p 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
1,4l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
1,4#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
	four
five six

seven
eight
nine
ten
.
normal 3G|
let @a = 'A'
3k|echo line("'k")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
dl
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
dp
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
dell
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
delp
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,3dl
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2dp
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
> #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
>> l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
< #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
j p
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4j #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p #l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
p l#
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4p 2 #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
# l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
nu l
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
l #
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
l 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
nu 2
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
# 3
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
k.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
k"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
k^
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
mark a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
ma a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
mark
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
mark ab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2,4mark a|echo line("'a")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
ke
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
kee
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
kep
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
kea
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
2ka x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
k a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
3k a|echo line("'a")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
0ka|echo line("'a")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
$ka|echo line("'a")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
"ayy|d b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d *
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d +
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d /
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
d =
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y 5
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y *
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
y +
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
normal "add
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
normal "Add
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
normal "_dd
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
normal "-dd
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
normal dd
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
normal dw
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
execute "normal \"add"
y A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
execute "normal yy"
d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
execute "normal yy"
d b
execute "normal \"bp"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
execute "normal \"_ddp"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
execute "normal \"-p"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
"---
set report=2 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one
  two three
   four
five six

seven
eight
nine
ten
.
normal 4G3|
let @a = 'A'
execute "normal ddP"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@a) string(@1) string(@0)
