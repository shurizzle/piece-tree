set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,3s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,2s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,100s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
.,+1s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/ge
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/zz/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/zz/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/E/X/i
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/E/X/I
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/n
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/gn
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/r
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/r
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/&
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/&
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/gp
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/gp
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/g 2
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/g 2
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ 2
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/ 2
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/g3
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/g3
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e//
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e//
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s//X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s//X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s#e#X#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s#e#X#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s,e,X,
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s,e,X,
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/\r/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/\r/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/a\tb/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/a\tb/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/\n//
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/\n//
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/o/0/g|s/e/1/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/o/0/g|s/e/1/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
&
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4&
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
&&
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4&&
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
~
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4~
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/^/> /
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/^/> /
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/$/ </
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/$/ </
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/ /_/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/ /_/g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/t/T/g|echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/t/T/g|echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/|s//Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/|s//Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
sg
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4sg
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
sgi
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4sgi
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
si
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4si
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
sI
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4sI
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ |
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/ |
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s 1
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s 1
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ 0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/ 0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ -1
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/ -1
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ 99
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/ 99
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/gg
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/gg
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
s/e/X/ee
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2,4s/e/X/ee
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
1,3g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
%g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
2g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
$g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
0g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
3,1g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/>
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/s/e/X/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g!/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/p
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/zz/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$v/zz/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/./d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g//d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/g/x/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/normal Ax
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/m0
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/t.
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g#e#d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/-1j
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/^$/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/y A
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/s/e/X/|s/e/Y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/d|d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/echo "x"
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g!
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g!/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/ d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/normal dd
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/s/x/y/
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/s/e/X/e
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/g/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/v/e/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/\n/d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/.,+1d
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/d x
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/k a
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/=
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/#
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/l
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
"---
set report=0 expandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one two three
  four five six
three two one

eee eee eee
x
last line here
.
normal 2G3|
/five/,$g/e/nu
echo line('.') col('.') string(getline(1,'$')) string(@/) string(line("'[")) string(line("']"))
