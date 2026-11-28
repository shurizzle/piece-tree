set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
d 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
d 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
%d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
%d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
$d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
$d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
1d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
1d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
d a
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
d a
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
y
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
y
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3y
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3y
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
y 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
y 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
m$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
m$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
m1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
m1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
m2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
m2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2m4
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2m4
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3m5
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3m5
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
1,2m$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
1,2m$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
3m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
3m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3m1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3m1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
m.
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
m.
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
t0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
t0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
t.
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
t.
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
t$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
t$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2t4
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2t4
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3t0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3t0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
co 1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
co 1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
1,3t$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
1,3t$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
t2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
t2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
> 
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
> 
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2>
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2>
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3>
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3>
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
> 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
> 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
>> 
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
>> 
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
<
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
<
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2<
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2<
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3<
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3<
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
< 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
< 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
j
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
j
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
1j
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
1j
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,4j
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,4j
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
j!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
j!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3j!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3j!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
j 3
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
j 3
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
1,3j 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
1,3j 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,4p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,4p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
$p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab nonumber
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
$p
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
sort
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
sort
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
sort!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
sort!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,4sort
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,4sort
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
sort u
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
sort u
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
sort n
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
sort n
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
retab
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
retab
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
retab!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
retab!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3retab
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3retab
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
s/a/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
s/a/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
%s/a/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
%s/a/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3s/a/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3s/a/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
s/zz/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
s/zz/X/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
%s/e/E/g
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
%s/e/E/g
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
&&
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
&&
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
g/a/d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
g/a/d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
g/a/s/a/b/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
g/a/s/a/b/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
g/e/m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
g/e/m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
g/a/t.
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
g/a/t.
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
g/a/normal Ax
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
g/a/normal Ax
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
v/a/d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
v/a/d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
g/a/>
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
g/a/>
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
normal Ax
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
normal Ax
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3normal Ax
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3normal Ax
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
*
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
*
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
'<,'>d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
'<,'>d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
3
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
3
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
/five/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
/five/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
/gamma/d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
/gamma/d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
?alpha?d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
?alpha?d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2;+1d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2;+1d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
1,2d|3d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
1,2d|3d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
d|d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
d|d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
redo
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
redo
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
d x
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
d x
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
d x 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
d x 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3y a
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3y a
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
'a
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
'a
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
'bd
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
'bd
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
w
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
w
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
wq
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
wq
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
enew
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
enew
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
new
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
new
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
split
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
split
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
retab 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
retab 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
retab! 4
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
retab! 4
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3j 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3j 2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
j!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
j!
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
$=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
$=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2,3=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2,3=
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
keepj d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
keepj d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
keepjumps 2d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
keepjumps 2d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
silent d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
silent d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
silent! 2d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
silent! 2d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
lockm d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
lockm d
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
keepmarks m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
keepmarks m0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
sil m$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
sil m$
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
vert
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
vert
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
noh
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
noh
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
0
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
99
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
99
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
-1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
-1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
+1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
+1
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
2
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
/zzzz/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
/zzzz/
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 2G7|"
//
echo line('.') col('.') string(getline(1,'$'))
"---
set tabstop=8 shiftwidth=8 noexpandtab
append
  alpha beta
 gamma
   delta epsilon zeta
  
five six seven eight
.
execute "normal 1G1|"
//
echo line('.') col('.') string(getline(1,'$'))

