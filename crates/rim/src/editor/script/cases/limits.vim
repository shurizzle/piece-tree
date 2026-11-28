set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1,3pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1,3pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1,3pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1,3pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1,3pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
1,3pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,1pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,1pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,1pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,1pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,1pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,1pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
.,+1pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
.,+1pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
.,+1pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
.,+1pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
.,+1pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
.,+1pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
%pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
%pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
%pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
%pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
%pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
%pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
/six/pu b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
/six/pu c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
/six/pu a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
/six/pu! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
/six/pu! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
/six/pu! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put c
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put d
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put e
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! e
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put e
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put e
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put f
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! f
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put f
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put f
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put g
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! g
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put g
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put g
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put 1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put B
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! B
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put B
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put B
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! =
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put =
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put =
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =1+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! =1+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put =1+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put =1+1
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put ="a\nb"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! ="a\nb"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put ="a\nb"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put ="a\nb"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put ="a\nb\n"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! ="a\nb\n"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put ="a\nb\n"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put ="a\nb\n"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =[1,2]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! =[1,2]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put =[1,2]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put =[1,2]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =[]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! =[]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put =[]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put =[]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =""
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! =""
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put =""
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put =""
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! =x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put =x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put =x
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put %
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! %
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put %
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put %
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put /
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! /
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put /
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put /
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put ;
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! ;
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put ;
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put ;
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put 12
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put! 12
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0put 12
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$put 12
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put b|put b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put a|put! c|put e
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2put b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put|put
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put b|echo line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,2put b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
execute "normal \<C-v>jly"|put
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
execute "normal vjy"
put
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
execute "normal Vjy"
put
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
let @/ = "six"
put /
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
normal "ayw
put a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
normal "byy
put b
put b
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put ='a'.nr2char(10)
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =line("$")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
put =string(1.5)
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
ka
echo line("'a") col("'a") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2ka
echo line("'a") col("'a") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4ka
echo line("'a") col("'a") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0ka
echo line("'a") col("'a") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$ka
echo line("'a") col("'a") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark a
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
kz
echo line("'z") col("'z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2kz
echo line("'z") col("'z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4kz
echo line("'z") col("'z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0kz
echo line("'z") col("'z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$kz
echo line("'z") col("'z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
kA
echo line("'A") col("'A") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2kA
echo line("'A") col("'A") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4kA
echo line("'A") col("'A") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0kA
echo line("'A") col("'A") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$kA
echo line("'A") col("'A") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark A
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
kZ
echo line("'Z") col("'Z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark Z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2kZ
echo line("'Z") col("'Z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark Z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4kZ
echo line("'Z") col("'Z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark Z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0kZ
echo line("'Z") col("'Z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark Z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$kZ
echo line("'Z") col("'Z") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark Z
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k0
echo line("'0") col("'0") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k0
echo line("'0") col("'0") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k0
echo line("'0") col("'0") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k0
echo line("'0") col("'0") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k0
echo line("'0") col("'0") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark 0
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k9
echo line("'9") col("'9") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k9
echo line("'9") col("'9") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k9
echo line("'9") col("'9") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k9
echo line("'9") col("'9") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k9
echo line("'9") col("'9") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark 9
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k'
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark '
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k'
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark '
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k'
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark '
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k'
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark '
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k'
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark '
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k`
echo line("'`") col("'`") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark `
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k`
echo line("'`") col("'`") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark `
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k`
echo line("'`") col("'`") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark `
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k`
echo line("'`") col("'`") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark `
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k`
echo line("'`") col("'`") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark `
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k[
echo line("'[") col("'[") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark [
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k[
echo line("'[") col("'[") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark [
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k[
echo line("'[") col("'[") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark [
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k[
echo line("'[") col("'[") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark [
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k[
echo line("'[") col("'[") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark [
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k]
echo line("']") col("']") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark ]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k]
echo line("']") col("']") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark ]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k]
echo line("']") col("']") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark ]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k]
echo line("']") col("']") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark ]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k]
echo line("']") col("']") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark ]
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k<
echo line("'<") col("'<") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark <
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k<
echo line("'<") col("'<") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark <
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k<
echo line("'<") col("'<") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark <
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k<
echo line("'<") col("'<") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark <
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k<
echo line("'<") col("'<") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark <
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k>
echo line("'>") col("'>") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark >
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k>
echo line("'>") col("'>") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark >
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k>
echo line("'>") col("'>") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark >
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k>
echo line("'>") col("'>") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark >
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k>
echo line("'>") col("'>") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark >
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark "
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k^
echo line("'^") col("'^") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark ^
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k^
echo line("'^") col("'^") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark ^
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k^
echo line("'^") col("'^") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark ^
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k^
echo line("'^") col("'^") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark ^
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k^
echo line("'^") col("'^") line("'[") line("']")
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark ^
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k.
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark .
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k(
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark (
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k(
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark (
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k(
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark (
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k(
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark (
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k(
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark (
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k)
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark )
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k)
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark )
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k)
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark )
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k)
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark )
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k)
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark )
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k{
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark {
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k{
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark {
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k{
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark {
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k{
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark {
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k{
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark {
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k}
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark }
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k}
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark }
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k}
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark }
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k}
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark }
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k}
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark }
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k-
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k-
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k-
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k-
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k-
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark -
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k_
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k_
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k_
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k_
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k_
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark _
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
kx y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark x y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2kx y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark x y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4kx y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark x y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0kx y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark x y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$kx y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark x y
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark !
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark !
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark !
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark !
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k!
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark !
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k@
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark @
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k@
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark @
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k@
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark @
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k@
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark @
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k@
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark @
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
kab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark ab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2kab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark ab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4kab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark ab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0kab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark ab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$kab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark ab
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
k~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
mark ~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2k~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
2mark ~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4k~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
3,4mark ~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0k~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
0mark ~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$k~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
$mark ~
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@-) string(line("'[")) string(col("'[")) string(line("']")) string(col("']"))
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal d%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal c%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal cn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal de\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dd\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dfx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dt)\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal d$\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dl\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal x\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dh\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal d0\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dj\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal dk\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal d2n\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal yw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal y%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G1|"
silent execute "normal yn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal d%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal c%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal cn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal de\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dd\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dfx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dt)\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal d$\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dl\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal x\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dh\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal d0\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dj\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal dk\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal d2n\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal yw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal y%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 1G6|"
silent execute "normal yn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal d%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal c%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal cn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal de\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dd\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dfx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dt)\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal d$\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dl\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal x\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dh\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal d0\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dj\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal dk\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal d2n\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal yw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal y%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G3|"
silent execute "normal yn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal d%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal c%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal cn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal de\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dd\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dfx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dt)\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal d$\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dl\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal x\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dh\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal d0\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dj\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal dk\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal d2n\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal yw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal y%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 2G10|"
silent execute "normal yn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal d%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal c%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal cn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal de\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dd\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dfx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dt)\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal d$\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dl\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal x\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dh\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal d0\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dj\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal dk\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal d2n\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal yw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal y%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 3G|"
silent execute "normal yn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal d%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal c%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal cn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal de\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dd\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dfx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dt)\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal d$\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dl\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal x\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dh\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal d0\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dj\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal dk\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal d2n\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal yw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal y%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 5G0"
silent execute "normal yn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal d%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal c%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal cn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal de\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dd\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dfx\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dt)\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal d$\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dl\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal x\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dh\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal d0\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dj\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal dk\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal d2n\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal yw\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal y%\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
"---
set report=0 noexpandtab shiftwidth=8 tabstop=8 nonumber norelativenumber
append
one (two) three
  four {five} six.
   seven  eight

nine ten
.
normal 1G
let @a = "x\ny"
let @b = "l1\nl2\n"
let @c = "single"
let @d = ""
let @e = "  ind\n"
let @f = "é😀\n"
normal 2G0
silent execute "normal gg"
silent execute "normal /e\<CR>"
execute "normal 6G|"
silent execute "normal yn\<Esc>"
echo line('.') col('.') string(getline(1,'$')) string(@") string(@1) string(@2) string(@-) string(@0)
