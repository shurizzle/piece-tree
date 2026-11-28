call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call setbufline(2,1,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call setbufline(2,1,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,1,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,1,"X")
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call setbufline(2,1,"X")
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call setbufline(2,3,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call setbufline(2,3,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,3,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,3,"X")
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call setbufline(2,3,"X")
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call setbufline(2,5,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call setbufline(2,5,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,5,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,5,"X")
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call setbufline(2,5,"X")
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call appendbufline(2,0,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call appendbufline(2,0,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call appendbufline(2,0,"X")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call appendbufline(2,0,"X")
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call appendbufline(2,0,"X")
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call appendbufline(2,1,["x","y"])
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call appendbufline(2,1,["x","y"])
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call appendbufline(2,1,["x","y"])
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call appendbufline(2,1,["x","y"])
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call appendbufline(2,1,["x","y"])
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call appendbufline(2,3,"Z")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call appendbufline(2,3,"Z")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call appendbufline(2,3,"Z")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call appendbufline(2,3,"Z")
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call appendbufline(2,3,"Z")
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call deletebufline(2,1)
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call deletebufline(2,1)
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call deletebufline(2,1)
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call deletebufline(2,1)
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call deletebufline(2,1)
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call deletebufline(2,2,3)
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call deletebufline(2,2,3)
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call deletebufline(2,2,3)
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call deletebufline(2,2,3)
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call deletebufline(2,2,3)
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call deletebufline(2,1,"$")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call deletebufline(2,1,"$")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call deletebufline(2,1,"$")
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call deletebufline(2,1,"$")
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call deletebufline(2,1,"$")
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
call setbufline(2,1,["a","b","c","d","e"])
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! 2Gl"
b 1
call setbufline(2,1,["a","b","c","d","e"])
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,1,["a","b","c","d","e"])
b 2
echo line(".") col(".") line("'[") line("']") line("'.") col("'.") &modified changenr()
echo getline(1,"$")
execute "normal! u"
echo line(".") col(".") getline(1,"$")
execute "normal! \<C-r>"
echo line(".") col(".")
b 1
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
b 2
execute "normal! G$"
b 1
call setbufline(2,1,["a","b","c","d","e"])
echo getbufinfo(2)[0].lnum
b 2
echo getpos(".")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta","gamma"], "g.x")
e f.x
set hidden
badd g.x
call bufload(2)
sp g.x
execute "normal! 2G"
wincmd p
call setbufline(2,1,["a","b","c","d","e"])
wincmd w
echo line(".") col(".") getline(1,"$")
execute "normal! u"
echo line(".")
