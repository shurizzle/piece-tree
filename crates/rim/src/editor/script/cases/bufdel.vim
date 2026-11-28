bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
normal! ix
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
b1
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
normal! ix
e /nonexistent/c
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
e /nonexistent/d
b2
b4
b1
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
sp
sp
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
e /nonexistent/b
sp
b1
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
e /nonexistent/a
enew
e /nonexistent/b
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
9bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
0bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,3bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
+1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
-1bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,$bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bd 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bd|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bd!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
new|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
vnew|bd 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
9bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
0bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,3bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
+1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
-1bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,$bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bw 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bw|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bw!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
new|bw
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
vnew|bw 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun! 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 9
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1 2
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun a
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun /nonexistent/c
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun a b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1 b
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2 zzz
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
9bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
0bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
2,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,3bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
%bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
+1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
-1bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
.,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,$bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
1,2bun 3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 1x
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun ^/non
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 2,3
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun 0
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun -1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
bun|bd
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
sp|bun!
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
new|bun
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
vnew|bun 1
echo execute('ls!')
echo map(range(1,6), 'bufexists(v:val)') map(range(1,6), 'buflisted(v:val)') map(range(1,6), 'bufloaded(v:val)') winnr('$') bufnr('%') bufnr('#') bufnr('$')
