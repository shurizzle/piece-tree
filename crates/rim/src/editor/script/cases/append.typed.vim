append
\a
\b
\.
echo string(getline(1,'$')) line('.') col('.')
"---
a
\x
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\  a
\b
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\  a
\b
\c
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append!
\  a
\b
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\  a
\.
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append | one
\two
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append|one
echo string(getline(1,'$')) line('.') col('.')
"---
append
\
\
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\a
\.
insert
\b
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\a
\b
\c
\.
2insert
\x
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\a
\b
\c
\.
2change
\x
\y
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\a
\b
\c
\.
%change
\x
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\a
\b
\c
\.
0append
\x
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\  a
\.
change
\x
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\  a
\.
1change
\x
\y
\.
echo string(getline(1,'$')) line('.') col('.')
"---
set tabstop=8
append
\	a
\b
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\a
\.
append
\b
\.
append
\c
\.
echo string(getline(1,'$')) line('.') col('.')
"---
append
\a
\b
\.
echo line("'[") line("']")
"---
append
\a
\b
\c
\.
1append
\x
\.
echo line("'[") line("']")
"---
append
\.
echo string(getline(1,'$')) line('.') col('.')