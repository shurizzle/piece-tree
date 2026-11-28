function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist("%"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist("g.x"))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist(9))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist(""))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist([]))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist({}))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
badd g.x
normal! x
execute "normal! 3Gx"
execute "normal! 5Gx"
execute "normal! 5Gx"
execute "normal! 1Gx"
execute "normal! 7G$x"
call setline(2,"X")
call append(0,"n")
normal! dd
execute "normal! 4Gox\<Esc>"
execute "normal! gg"
execute "normal! g;"
execute "normal! g;g;"
execute "normal! g;g;g,"
execute "normal! 99g;"
execute "normal! 99g,"
echo Cl(getchangelist(1,2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
e g.x
execute "normal! 2Gx"
execute "normal! 3Gx"
e f.x
normal! x
echo Cl(getchangelist())
e g.x
echo Cl(getchangelist())
execute "normal! g;"
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
sp g.x
execute "normal! 2Gx"
wincmd p
echo Cl(getchangelist())
execute "normal! x"
echo Cl(getchangelist())
wincmd w
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
enew
echo Cl(getchangelist())
call setline(1,"a")
echo Cl(getchangelist())
normal! x
echo Cl(getchangelist())
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
e g.x
execute "normal! 2Gx"
execute "normal! 3Gx"
e f.x
normal! x
echo Cl(getchangelist(2))
e g.x
echo Cl(getchangelist(2))
execute "normal! g;"
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
sp g.x
execute "normal! 2Gx"
wincmd p
echo Cl(getchangelist(2))
execute "normal! x"
echo Cl(getchangelist(2))
wincmd w
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
enew
echo Cl(getchangelist(2))
call setline(1,"a")
echo Cl(getchangelist(2))
normal! x
echo Cl(getchangelist(2))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
e g.x
execute "normal! 2Gx"
execute "normal! 3Gx"
e f.x
normal! x
echo Cl(getchangelist(1))
e g.x
echo Cl(getchangelist(1))
execute "normal! g;"
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
call writefile(["one","two","three","four","five","six","seven"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
sp g.x
execute "normal! 2Gx"
wincmd p
echo Cl(getchangelist(1))
execute "normal! x"
echo Cl(getchangelist(1))
wincmd w
echo Cl(getchangelist(1))
"---
function! Cl(r)
  return len(a:r) < 2 ? a:r : [map(copy(a:r[0]), {_,d -> d.lnum . ":" . d.col . ":" . d.coladd}), a:r[1]]
endfunction
enew
echo Cl(getchangelist(1))
call setline(1,"a")
echo Cl(getchangelist(1))
normal! x
echo Cl(getchangelist(1))
