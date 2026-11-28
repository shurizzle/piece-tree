call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! x"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 3x"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! dd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 2dd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! dj"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! D"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! C\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! cc\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! p"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! P"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! yyp"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! yyP"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! J"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 3J"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! >>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! <<"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! >j"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ~"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 3~"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! r"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! rX"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ra"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! R\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Rab\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ix\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ixyz\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Ax\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Ix\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ox\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Ox\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ox\<CR>y\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! gJ"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! dd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ddp"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xp"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ddu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! dwu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xuu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xu\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 3xu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xxxu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 2x2u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Gdd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ggdG"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ggVGd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ggVGu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ggVG>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ggVG~"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! gUU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! guu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! \<C-a>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! \<C-x>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 5\<C-a>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xxU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ."
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! x."
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! xx."
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! 3."
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ddj."
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! yy"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! yyj"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ylx"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ciwab\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ciw\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! diw"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! daw"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! dap"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! yap"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! dip"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! gqq"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! guiw"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! gUiw"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ddkp"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! ddggP"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! vjd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! vjy"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! vjc\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Vjd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Vjy"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! Vjc\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! \<C-v>jd"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! \<C-v>jlc\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! \<C-v>jIx\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! \<C-v>jAx\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
execute "normal! \<C-v>j$Ax\<Esc>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%s/o/0/g
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/g
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%s/o/0/g
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%s/x/y/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/x/y/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%s/x/y/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
1,3s/e/E/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/e/E/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
1,3s/e/E/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
s/e/E/g
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
s/e/E/g
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
s/e/E/g
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%s/\n//
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/\n//
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%s/\n//
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%s/$/!/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/$/!/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%s/$/!/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%s/^/>/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/^/>/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%s/^/>/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
1,2d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,2d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
1,2d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
2,3m0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
2,3m0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
2,3m0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
m$
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
m$
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
m$
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
1t.
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1t.
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
1t.
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
2,3t$
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
2,3t$
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
2,3t$
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
1,2j
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,2j
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
1,2j
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
j
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
j
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
j
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
<
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
<
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
<
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
1,2>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,2>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
1,2>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%>
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
g/o/d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
g/o/d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
g/o/d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
g/o/s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
g/o/s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
g/o/s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
g/e/normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
g/e/normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
g/e/normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
v/o/d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
v/o/d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
v/o/d
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
g/o/m0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
g/o/m0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
g/o/m0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
g/./t.
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
g/./t.
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
g/./t.
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
sort
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
sort
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
sort
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
sort!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
sort!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
sort!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
sort u
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
sort u
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
sort u
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%retab
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%retab
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%retab
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
retab!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
retab!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
retab!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent 0r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent 0r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent 0r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent $r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent $r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent $r f.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
1,2y
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,2y
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
1,2y
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
pu
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
pu
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
pu
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
pu!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
pu!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
pu!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
2pu
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
2pu
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
2pu
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
undo
redo
normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%normal x
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%normal! Ax
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%normal! Ax
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%normal! Ax
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
1,3normal! dd
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3normal! dd
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
1,3normal! dd
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
undo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
undo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
undo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
undo
redo
undo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
redo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
redo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
redo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
undo
redo
redo
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
undo 0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
undo 0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
undo 0
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
earlier 1
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
earlier 1
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
earlier 1
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
later 1
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
later 1
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
later 1
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
earlier 10
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
earlier 10
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
earlier 10
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
later 10
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
later 10
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
later 10
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
undojoin | s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
undojoin | s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
undojoin | s/o/0/
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set ff=dos
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set ff=dos
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set ff=dos
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set ff=unix
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set ff=unix
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set ff=unix
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set fixeol
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set fixeol
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set fixeol
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set nofixeol
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nofixeol
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set nofixeol
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set binary
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set binary
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set binary
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set nobinary
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nobinary
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set nobinary
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set modified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set modified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set modified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set nomodified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set nomodified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set modified | set nomodified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set modified | set nomodified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set modified | set nomodified
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent w')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent w')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent w g.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w g.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent w g.x')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent up')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent up')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent up')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent e!')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent e!')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent e!')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
let g:_ = execute('silent e')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent e')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
let g:_ = execute('silent e')
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
silent enew!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
silent enew!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
silent enew!
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set ro
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set ro
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set ro
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set noma
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set noma
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set noma
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
set ma
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set ma
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
set ma
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
s/a/b/e
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
s/a/b/e
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
s/a/b/e
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
%s/z/y/e
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/z/y/e
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xxx
set nomodified
%s/z/y/e
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! uu"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! 3u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! u\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! uu\<C-r>\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! 10u"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! u3\<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! g-g-"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! g-g+"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! U"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! UU"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xx
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xjx
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ddx
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! xu
normal! dd
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! dd
normal! dd
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
normal! u
normal! ix
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
1,3s/o/0/
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
%s/o/0/
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ox
normal! x
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"a")
call append(1,["b","c"])
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! ggVGd
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! gg3dd
normal! G
normal! p
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
set nomodified
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
let g:_ = execute('silent w')
normal! x
execute "normal! \<C-r>"
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"x")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call setline(1,"x")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,["a","b"])
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call setline(1,["a","b"])
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(6,"x")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call setline(6,"x")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call append(0,"x")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call append(0,"x")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call append(5,["a","b"])
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call append(5,["a","b"])
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call append(1,[])
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call append(1,[])
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call setline(1,"one")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call setline(1,"one")
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
call deletebufline(1,1)
echo b:changedtick
"---
call writefile(["one","two","three","four","five"], "f.x")
e f.x
normal! x
call deletebufline(1,1)
echo b:changedtick
"---
enew
echo b:changedtick
"---
enew
call setline(1,"x")
echo b:changedtick
"---
enew
normal! ix
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
echo b:changedtick
"---
call writefile(["a"],"g.x")
badd g.x
echo b:changedtick
"---
call writefile(["a"],"g.x")
badd g.x
b 2
echo b:changedtick
"---
call writefile(["a"],"g.x")
badd g.x
call bufload(2)
echo getbufvar(2,"changedtick")
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
let g:_ = execute('silent e #')
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
let g:_ = execute('silent e #')
let g:_ = execute('silent e #')
echo b:changedtick
"---
call writefile(["a"],"g.x")
set hidden
let g:_ = execute('silent e g.x')
let g:_ = execute('silent e #')
let g:_ = execute('silent e #')
echo b:changedtick
"---
call writefile(["a"],"g.x")
sp g.x
let g:_ = execute('silent close')
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
normal! x
let g:_ = execute('silent w')
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
normal! x
let g:_ = execute('silent e!')
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
let g:_ = execute('silent e!')
let g:_ = execute('silent e!')
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
normal! x
let g:_ = execute('silent bd!')
let g:_ = execute('silent e g.x')
echo b:changedtick
"---
call writefile(["a"],"g.x")
let g:_ = execute('silent e g.x')
let g:_ = execute('silent bun')
let g:_ = execute('silent e g.x')
echo b:changedtick
"---
call writefile([],"g.x")
let g:_ = execute('silent e g.x')
echo b:changedtick
"---
e nosuch.x
echo b:changedtick
"---
e nosuch.x
normal! ix
let g:_ = execute('silent w')
echo b:changedtick
"---
new
echo b:changedtick
"---
vnew
echo b:changedtick
"---
new
normal! ix
echo b:changedtick
"---
call writefile(["a","b"],"g.x")
let g:_ = execute('silent e g.x')
normal! x
let g:_ = execute('silent w')
normal! x
let g:_ = execute('silent w')
echo b:changedtick
"---
call writefile(["a","b"],"g.x")
let g:_ = execute('silent e g.x')
normal! x
let g:_ = execute('silent w!')
echo b:changedtick
"---
call writefile(["a","b"],"g.x")
let g:_ = execute('silent e g.x')
normal! x
let g:_ = execute('silent up')
let g:_ = execute('silent up')
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
let b:changedtick = 1
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
unlet b:changedtick
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
let b:changedtick += 1
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
lockvar b:changedtick
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
unlockvar b:changedtick
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo b:
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo keys(b:)
echo b:changedtick
"---
"unordered
call writefile(["one","two"], "f.x")
e f.x
let b:foo = 1 | let b:
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
let b:
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo exists("b:changedtick")
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo has_key(b:, "changedtick")
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo b:["changedtick"]
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
let b:["changedtick"] = 3
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo islocked("b:changedtick")
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
call extend(b:, {"changedtick": 5})
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
call remove(b:, "changedtick")
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo get(b:, "changedtick")
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo len(b:)
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
let x = b:
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
let x.changedtick = 9
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo getbufvar(1,"")
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
call setbufvar(1,"changedtick",1)
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo values(b:)
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo items(b:)
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
unlet! b:changedtick
echo b:changedtick
"---
call writefile(["one","two"], "f.x")
e f.x
echo type(b:)
echo b:changedtick
