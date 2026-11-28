call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(2,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(4,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(5,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(6,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(0,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(-1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline("$","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(".","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(3,["a","b","c"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(4,["a","b","c"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(5,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,[])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,12)
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,[1,2.5,"x"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,"")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline("x","y")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,{})
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,[[1],"x"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,v:true)
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,v:null)
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1,"é日")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline("1","S")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(1.5,"S")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo setline(2,"a	b")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(0,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(4,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(5,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(6,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(-1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append("$","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(".","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(0,["a","b","c"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(4,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(2,[])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(1,"")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(2,12)
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append("x","y")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(2,[1,[2]])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
echo append(1,v:null)
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
3G
call append(0,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
3G
call append(1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
3G
call append(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
3G
call append("$","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
3G
call setline(1,"XYZ")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
3G
call setline(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
1G
call append(0,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
1G
call append(1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
1G
call append(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
1G
call append("$","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
1G
call setline(1,"XYZ")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
1G
call setline(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
4G
call append(0,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
4G
call append(1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
4G
call append(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
4G
call append("$","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
4G
call setline(1,"XYZ")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
4G
call setline(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
2G$
call append(0,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
2G$
call append(1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
2G$
call append(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
2G$
call append("$","X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
2G$
call setline(1,"XYZ")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
2G$
call setline(2,["a","b"])
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
call setline(1,"X")
echo undotree().seq_cur
undo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
redo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
call setline(1,"X")
call setline(2,"Q")
undo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
call append(2,["a","b"])
echo undotree().seq_cur
undo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
redo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
call append(2,["a","b"])
call setline(2,"Q")
undo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
call setline(1,["a","b","c"])
echo undotree().seq_cur
undo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
redo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
call setline(1,["a","b","c"])
call setline(2,"Q")
undo
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
2G
mark a
call append(0,"X")
echo line("'a")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
3G
mark a
call setline(3,"X")
echo line("'a") col("'a")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
4G
mark b
call append(1,["x","y"])
echo line("'b")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
set nomodifiable
echo setline(1,"X")
echo append(1,"X")
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
enew
echo append(0,"a")
echo getline(1,"$")
echo line("$")
"---
enew
echo append(1,"a")
echo getline(1,"$")
"---
enew
echo setline(1,"a")
echo getline(1,"$")
"---
enew
echo setline(2,"a")
echo getline(1,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,1,"X")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,1,"X")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,1,"X")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,1,"X")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,3,"X")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,3,"X")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,3,"X")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,3,"X")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,2,["a","b","c"])
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,2,["a","b","c"])
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,2,["a","b","c"])
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,2,["a","b","c"])
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo appendbufline(2,0,"X")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo appendbufline(2,0,"X")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo appendbufline(2,0,"X")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo appendbufline(2,0,"X")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo appendbufline(2,2,["x","y"])
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo appendbufline(2,2,["x","y"])
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo appendbufline(2,2,["x","y"])
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo appendbufline(2,2,["x","y"])
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo appendbufline(2,"$","X")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo appendbufline(2,"$","X")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo appendbufline(2,"$","X")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo appendbufline(2,"$","X")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline("g.x",1,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline("g.x",1,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline("g.x",1,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline("g.x",1,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(9,1,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(9,1,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(9,1,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(9,1,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline("",1,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline("",1,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline("",1,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline("",1,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(1,1,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(1,1,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(1,1,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(1,1,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline([],1,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline([],1,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline([],1,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline([],1,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,"x","N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,"x","N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,"x","N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,"x","N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,0,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,0,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,0,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,0,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,-1,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,-1,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,-1,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,-1,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,"$","N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,"$","N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,"$","N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,"$","N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo appendbufline(2,5,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo appendbufline(2,5,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo appendbufline(2,5,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo appendbufline(2,5,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline("$",1,"N")
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline("$",1,"N")
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline("$",1,"N")
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline("$",1,"N")
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
badd h.x
echo setbufline(2,1,[])
echo getbufline(2,1,"$") getbufline(1,1,"$")
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
sp g.x
wincmd j
echo setbufline(2,1,[])
echo getbufline(2,1,"$") winnr() line(".") &modified
echo execute("ls!")
wincmd k
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
echo setbufline(2,1,[])
echo getbufline(2,1,"$")
echo bufloaded(2) &modified
echo execute("ls!")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
e g.x
e f.x
set hidden
echo setbufline(2,1,[])
echo getbufline(2,1,"$")
b 2
echo getline(1,"$") line(".") col(".") &modified changenr() line("'.") line("$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,1,2)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,0,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,-1,2)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,3,2)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,2,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,3,100)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(2,1,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline("g.x",1,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline("",1,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(7,1,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline([],1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,"x")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,{})
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline(1,1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline(1,"$")
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline(1,0)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline(1,5)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline(1,-1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline(2,1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline("g.x",1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufoneline(1,2,3)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline()
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo setline()
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo setline(1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo append(1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo setbufline(1,1)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline(1,1,2,3)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline("f.x",1,2)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline("f",1,2)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline("%",1,2)
"---
call writefile(["one","two","three","four"], "f.x")
call writefile(["alpha","beta"], "g.x")
e f.x
badd g.x
echo getbufline("#",1,2)
