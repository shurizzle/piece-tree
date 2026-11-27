append
a
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
a
a
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
insert
a
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
i
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
only
echo string(getline(1,'$')) line('.') col('.')
"---
a
  indented
	tab
.
echo string(getline(1,'$')) line('.') col('.')
"---
append | one
two
.
echo string(getline(1,'$')) line('.') col('.')
"---
append|one
.
echo string(getline(1,'$')) line('.') col('.')
"---
a|x
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
append
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
0append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
2append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
$append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
2insert
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
1insert
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
0insert
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
2change
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
2,3change
z
y
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
%change
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
%change
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
2change
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
9append
foo
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
4append
foo
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
  a
.
append!
  z
  .
echo 'after'
echo string(getline(1,'$')) line('.') col('.')
"---
append
  a
.
append
  z
  .
echo 'after'
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
1,2append
foo
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
.
2,1append
foo
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
.
.
echo string(getline(1,'$')) line('.') col('.')
"---
append


.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\x
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
  \b
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
. 
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
 .
.
echo string(getline(1,'$')) line('.') col('.')
"---
if 1
append
x
.
endif
echo string(getline(1,'$')) line('.') col('.')
"---
if 0
append
x
.
endif
echo string(getline(1,'$')) line('.') col('.')
"---
for i in range(2)
append
l
.
endfor
echo string(getline(1,'$')) line('.') col('.')
"---
let i = 0
while i < 2
let i += 1
append
x{i}
.
endwhile
echo string(getline(1,'$')) line('.') col('.')
"---
function F()
append
fx
.
endfunction
call F()
echo string(getline(1,'$')) line('.') col('.')
"---
function F()
append
fx
.
endfunction
call F()
call F()
echo string(getline(1,'$')) line('.') col('.')
"---
execute "append\nx\ny\n."
echo string(getline(1,'$')) line('.') col('.')
"---
execute "append\nx\ny"
echo string(getline(1,'$')) line('.') col('.')
"---
execute "append\nx\n.\nappend\nz\n."
echo string(getline(1,'$')) line('.') col('.')
"---
execute "append|x"
echo string(getline(1,'$')) line('.') col('.')
"---
execute "append\n."
echo string(getline(1,'$')) line('.') col('.')
"---
call execute("append\nx\n.")
echo string(getline(1,'$')) line('.') col('.')
"---
call execute(['append', 'x', '.'])
echo string(getline(1,'$')) line('.') col('.')
"---
call execute(['append', 'x', 'y'])
echo string(getline(1,'$')) line('.') col('.')
"---
call execute(['append', 'x', '.', 'echo 1'])
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
silent append
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
append | b
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
append
"c
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
append
b | echo 1
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
1
append
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
2
change
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
/b/insert
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
/b/,$change
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
1append
a
.
echo string(getline(1,'$')) line('.') col('.')
"---
0append
a
.
echo string(getline(1,'$')) line('.') col('.')
"---
2append
a
.
echo string(getline(1,'$')) line('.') col('.')
"---
insert
a
.
1insert
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
change
a
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
change
b
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
.
:2d
append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
normal ix
append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
normal ix
insert
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
normal ix
1change
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
normal ix
%change
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
%d
append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
%d
insert
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
%d
0append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
%d
change
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
.
%d
change
.
echo string(getline(1,'$')) line('.') col('.')
"---
ap
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
appe
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
ins
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
cha
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
c
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
a!
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
append x
y
.
echo string(getline(1,'$')) line('.') col('.')
"---
append "c
x
.
echo string(getline(1,'$')) line('.') col('.')
"---
2append
.
echo string(getline(1,'$')) line('.') col('.')
"---
$append
z
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
z
.
$append
q
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
l0
l1
l2
l3
l4
l5
l6
l7
l8
l9
l10
l11
l12
l13
l14
l15
l16
l17
l18
l19
l20
l21
l22
l23
l24
l25
l26
l27
l28
l29
l30
l31
l32
l33
l34
l35
l36
l37
l38
l39
.
echo string(getline(1,'$')) line('.') col('.')


"---
append
  a
.
append
  z
  .
after
.
echo string(getline(1,'$')) line('.') col('.')
"---
let i = 0
while i < 2
let i += 1
append
a{i}
.
endwhile
echo string(getline(1,'$')) line('.') col('.')
"---
append
  a
  b
.
1
echo string(getline(1,'$')) line('.') col('.')
"---
append
  a
  b
.
.
echo string(getline(1,'$')) line('.') col('.')
"---
append
  a
  b
.
$
echo string(getline(1,'$')) line('.') col('.')
"---
append
a
b
c
.
echo line("'[") line("']")
"---
append
a
b
c
.
1append
x
y
.
echo line("'[") line("']")
"---
append
a
b
c
.
2insert
x
y
.
echo line("'[") line("']")
"---
append
a
b
c
.
2,3change
x
.
echo line("'[") line("']")
"---
append
a
b
c
.
0append
x
.
echo line("'[") line("']")
"---
append
a
b
c
.
$append
.
echo line("'[") line("']")
"---
append
a
b
c
.
1append
.
echo line("'[") line("']")
"---
append
a
b
c
.
2change
.
echo line("'[") line("']")
"---
append
	a
  
.
echo string(getline(1,'$'))
"---
append
  a
   
 
.
echo string(getline(1,'$'))
"---
append
  a
  
  b
.
echo string(getline(1,'$'))
"---
append!
  a
  
.
echo string(getline(1,'$'))