set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
call setline(1, 'hello')
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call setline(1, ['x','y'])
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write!') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write g.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! write >> f.txt') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! update') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! saveas g.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! file h.txt') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! enew') | echo v:errmsg
echo &mod &bt bufname('%')
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit!') | echo v:errmsg
echo getline(1) &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! edit g.txt') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! bdelete') | echo v:errmsg
echo bufname('%') bufexists(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! quit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! wq') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
let v:errmsg = '' | let x = execute('silent! xit') | echo v:errmsg
echo bufname('%') &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
ls!
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
file
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
enew!
echo bufname('%') &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set hid
enew
ls
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set hid
enew
b1
echo &bt &mod getline(1)
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
echo getbufvar(1, '&bt') getbufinfo(1)[0].changed
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set bt=
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
set bt=
let v:errmsg = '' | let x = execute('silent! write') | echo v:errmsg
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
undo
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
normal! u
normal! 
echo &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
normal! Ahello
split
close
echo &bt &mod
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
call writefile(['x','y'], 'f.txt')
edit f.txt
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
echo buflisted(1) bufloaded(1)
set bt?
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=help') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=nofile') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=acwrite') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=quickfix') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=prompt') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=terminal') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=x') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=n') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=nofil') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=nowrite') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt+=help') | echo v:errmsg
echo &bt
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2 shm+=F
let v:errmsg = '' | let x = execute('silent! set bt=help,nofile') | echo v:errmsg
echo &bt
