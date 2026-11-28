call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo(1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo(1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo(2) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo(2) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo("g.x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo("g.x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo("%") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo("%") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo("") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo("") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo(9) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo(9) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo({}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo({}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo({"buflisted":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo({"buflisted":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo({"bufloaded":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo({"bufloaded":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo({"bufmodified":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo({"bufmodified":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo({"buflisted":0}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo({"buflisted":0}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo({"bufloaded":1,"bufmodified":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo({"bufloaded":1,"bufmodified":1}) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
for d in getbufinfo(1.5) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
normal! x
sp g.x
2wincmd w
set nomodified
for d in getbufinfo(1.5) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "name" ? fnamemodify(d[k], ":t") : k ==# "lastused" ? d[k] > 0 : k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufinfo(1)[0].name == fnamemodify("f.x", ":p")
echo sort(keys(getbufinfo(1)[0].variables))
let b:foo = 3
echo sort(keys(getbufinfo(1)[0].variables))
echo getbufinfo(1)[0].lnum
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
3
echo getbufinfo(1)[0].lnum
e g.x
echo getbufinfo(1)[0].lnum getbufinfo(2)[0].lnum
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"foo")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"foo","def")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo sort(keys(getbufvar(1,"")))
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"&sw")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"&nosuch")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"&nosuch","d")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"&ts")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(2,"&ts")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(2,"foo")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(9,"foo","d")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar("g.x","foo")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar("%","foo")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,[])
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar([],"foo")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"foo",1,2)
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1)
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(2,"&modified")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(2,"&ff")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"&ff")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo","bar")
call setbufvar(2,"foo","baz")
call setbufvar(2,"&sw",33)
e g.x
set ts=3
e f.x
echo getbufvar(1,"&filetype")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"x",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"x",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar("g.x","x",[1])
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(9,"x",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"&ts",3)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&ts",3)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&ts","x")
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&nosuch",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar([],"x",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,[],1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&modified",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&ma",0)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&ff","dos")
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&bh","wipe")
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(2,"&ro",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"changedtick",1)
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set ts=7 sw=5
badd g.x
call setbufvar(1,"foo")
echo getbufvar(1,"x") getbufvar(2,"x") getbufvar(1,"&ts") getbufvar(2,"&ts") getbufvar(2,"&modified") getbufvar(2,"&ma") getbufvar(2,"&ro") getbufvar(2,"&bh") getbufvar(2,"&ff")
echo &ts &ma
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo b:changedtick
normal! x
echo b:changedtick
call setline(1,"a")
echo b:changedtick
call append(1,["a","b","c"])
echo b:changedtick
call setline(1,["a","b","c","d","e"])
echo b:changedtick getbufvar(1,"changedtick") getbufinfo(1)[0].changedtick
"---
enew
echo b:changedtick
call setline(1,"x")
echo b:changedtick
call append(0,"y")
echo b:changedtick
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufvar(2,"changedtick")
b 2
echo b:changedtick
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd("h.x")
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd("g.x")
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd("f.x")
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd("")
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd("")
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd("h.x") bufadd("h.x")
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd("nosuch/x")
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd([])
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo bufadd()
echo bufnr("$") buflisted(2) bufloaded(2) bufexists(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload(2)
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload("g.x")
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload(9)
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload("nosuch")
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload(1)
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload("")
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload([])
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload(bufadd("g.x"))
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload(bufadd("nosuch.x"))
echo bufloaded(2) getbufline(2,1,"$") buflisted(2)
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
call bufload(2)
call setbufline(2,1,"Z")
echo getbufline(2,1,"$") getbufinfo(2)[0].changed
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo() | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo(1000) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo(1000) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo(1000) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo(1000) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo(1000) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo(1000) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo(1001) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo(1001) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo(1001) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo(1001) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo(1001) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo(1001) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo(win_getid()) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo(win_getid()) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo(win_getid()) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo(win_getid()) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo(win_getid()) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo(win_getid()) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo(0) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo(0) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo(0) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo(0) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo(0) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo(0) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo(-1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo(-1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo(-1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo(-1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo(-1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo(-1) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo("x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo("x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo("x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo("x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo("x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo("x") | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
for d in getwininfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
for d in getwininfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs g.x
sp
for d in getwininfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nonumber
sp g.x
set number
for d in getwininfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
3wincmd _
set laststatus=0
for d in getwininfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
vs
vertical resize 20
let w:foo=1
for d in getwininfo([]) | echo join(map(sort(keys(d)), {_,k -> k . "=" . string(k ==# "variables" ? len(d[k]) : d[k])}), " ") | endfor
echo getwininfo(win_getid())[0].variables
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
set nowrap
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
set number
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
set number nowrap
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
sp
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
vs
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
vs
sp
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
sp
resize 5
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
sp
resize 3
vertical resize 30
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
call setline(1, repeat("y", 3000))
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,60), {i,v -> repeat("x", (v % 7) * 40)}))
call setline(3, repeat("y", 3000))
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,200), {i,v -> "l".v}))
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,200), {i,v -> "l".v}))
set number
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,200), {i,v -> "l".v}))
execute "normal! 100Gzt"
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,200), {i,v -> "l".v}))
execute "normal! 100Gzt"
sp
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,200), {i,v -> "l".v}))
execute "normal! 100Gzz"
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,200), {i,v -> "l".v}))
execute "normal! 100Gzb"
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, ["a","b"])
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, ["a	b","b"])
set ts=4
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,30), {i,v -> repeat("	", 12) . "z"}))
set ts=8
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
"---
call setline(1, map(range(1,30), {i,v -> repeat("日", 50)}))
for d in getwininfo() | echo join(map(["topline","botline","height","width","textoff"], {_,k -> k . "=" . d[k]}), " ") | endfor
