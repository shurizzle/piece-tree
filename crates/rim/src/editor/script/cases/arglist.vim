for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x | args
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | next | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | next | next | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | next | previous
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | last
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | last | first
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | last | rewind
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | 2argument
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | argument 2
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | argument 9
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args *.x | argument 0
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argadd c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argadd c.x d.y
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | 0argadd c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | 1argadd c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | 5argadd c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argadd
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argdelete a.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argdelete *.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argdelete nosuch
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | argdelete
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | 2argdelete
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | 1,2argdelete
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | %argdelete
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | next | argdelete
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | last | argdelete
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argedit c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argedit c.x d.y
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | 0argedit c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | argedit
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | next c.x d.y
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | next!
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | 2next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | 2next | 2previous
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | Next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | 2Next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | last | 5previous
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x | previous
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x | last
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x | first
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args nosuch
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args nosuch*
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args sp\ ace.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args sp* b.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | e c.x | args
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | e c.x | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | normal! ix | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | normal! ix | next!
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | normal! ix | args c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | set nohidden | normal! ix | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | set nohidden | normal! ix | next!
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | set nohidden | e c.x | next
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x c.x | b2 | args
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | args! c.x d.y
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | edit #
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | bd
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | args c.x | argdelete c.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args %
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args # a.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x | args ## b.x
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
"---
for f in ["a.x", "b.x", "c.x", "d.y", "sp ace.x"]
  call writefile(["l"], f)
endfor
args a.x b.x | echo expand("##") | args ##
echo argc() string(argv()) argidx() string(argv(0)) string(argv(1)) string(argv(9)) string(argv(-1)) bufname('%') '|' expand('##') '|' expand('%')
echo execute('ls')
