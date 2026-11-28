call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | execute "normal! ddx"
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | execute "normal! ix"
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | execute "normal! ifoo"
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | s/one/1/
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | 1d
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | execute "normal! p"
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | undo
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set nomodifiable | set modifiable? 
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set readonly | execute "normal! x"
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set ro | w g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set readonly | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=hide | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=unload | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=delete | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=wipe | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=hide | execute "normal! x" | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=unload | execute "normal! x" | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=wipe | execute "normal! x" | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=delete | execute "normal! x" | e! g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=wipe | execute "normal! x" | e! g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=hide | sp g.x | close
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=wipe | sp g.x | wincmd j | close
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=delete | sp g.x | wincmd j | close
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=unload | sp g.x | wincmd j | close
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set hidden | set bufhidden=unload | e g.x
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=foo
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=hide | set bufhidden?
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bh=wipe | set bh?
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=wipe | bn
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=delete | b 1 | e g.x | b 1
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=delete | e g.x | b 1
echo bufnr('%') line('.') &modified &modifiable &readonly &bufhidden
echo execute('ls!')


"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | sp g.x | close
echo bufnr("#")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x | set bufhidden=hide | sp g.x | wincmd j | close
echo bufnr("#") winnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
e f.x | set readonly | execute "normal! x" | execute "normal! x"
echo bufnr("%") line(".") &modified
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
e f.x | set readonly
execute "normal! x"
execute "normal! x"
echo getline(1)
