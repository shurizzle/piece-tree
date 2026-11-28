call mkdir("d")
call mkdir("d/e", "p")
call writefile(["a"], "f.x")
call writefile(["a"], "d/g.x")
let s:abs = getcwd()
execute 'e' fnameescape(s:abs . '/f.x')
echo bufname('%') expand('%') expand('%:p') == s:abs . '/f.x'
echo execute('ls')
"---
call mkdir("d")
call writefile(["a"], "d/g.x")
e ./d/g.x
echo bufname('%') expand('%')
e d/../d/g.x
echo bufname('%') bufnr('%')
e ./d/g.x
echo bufname('%') bufnr('%')
"---
call mkdir("d")
call writefile(["a"], "d/g.x")
e d//g.x
echo bufname('%')
e %:h
echo bufname('%')
"---
call mkdir("d")
call writefile(["a"], "d/g.x")
e d/g.x
cd d
echo bufname('%') expand('%')
e ../d/g.x
echo bufname('%') bufnr('%')
cd ..
echo bufname('%')
"---
call writefile(["a"], "f.x")
badd ./f.x
echo bufname(1) bufname(2)
args ./f.x
echo argv() bufname('%')
"---
call writefile(["a"], "f.x")
e ./f.x
echo bufname('#') bufname('%')
let g:_ = execute('sav ./h.x')
echo bufname('%') bufname('#')
let g:_ = execute('w ./w.x')
echo bufname('%') bufname('#')
"---
call writefile(["a"], "f.x")
let b = bufadd("./f.x")
echo bufname(b)
let c = bufadd("./nosuch")
echo bufname(c)
echo execute('ls!')
