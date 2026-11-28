call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '?.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '[ab].x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '{a,b}.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '{a,c}.*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = 'd*/*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '**/*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '**'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*/'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '.*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'nosuch*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = 'nosuch'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'a.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'a.X'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'A.*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'sp*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '\*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = 'a\ .x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '['
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*['
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'a.x*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '{'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'd1'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = 'd1/'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'd?'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*.*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'a*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*~'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '*.{x,y}'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '{x,y}'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '{a,nosuch}.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'd1/*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'd1/../*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = './*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '../t/*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '**/e.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '**/z.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '.hid/*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*.h'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*.o'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '*bak'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'a.*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'abc*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'ab*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '{ab,abc.txt}'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '$d.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '\$d.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '[br].x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '\[br].x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'q{1}.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'q\{1\}.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*.x '
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '`echo a.x b.x`'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '`=["a.x","b.x"]`'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '`=1+1`'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '`echo`'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'a.x`echo`'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '"a.x"'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '''a.x'''
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'a.x b.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '~'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '~/'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '$HOME/*nosuch'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '$NOSUCH_Y'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = '$NOSUCH_Y/a.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '${HOME}'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*/*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '*/*/*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'd*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'D1'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
let p = 'D*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = '**/*'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'd1/**'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
let p = 'd1/**/*.x'
echo string(p) string(expand('t/' . p, 0, 1)) string(expand('t/' . p, 1, 1)) string(glob('t/' . p, 0, 1)) string(glob('t/' . p, 1, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
echo string(expand("t/*.x", 0, 0))
echo string(expand("t/*.x"))
echo string(glob("t/*.x"))
echo string(glob("t/*.zzz"))
echo string(expand("t/*.zzz"))
echo string(glob("t/*.x", 0, 0, 1))
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/a.*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/ab*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/abc*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/nosuch*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/?.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/{a,b}.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/[ab].x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/d1/*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/d1/*.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/**/e.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/**/*.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/d*/e.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/s*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/c.y
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/z.*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*.bak
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/m.*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*.h
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/a~
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*~
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*.x~
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/\*.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/$d.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/a\ .x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
sp t/a.*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
sp t/*.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
vs t/ab*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
new t/ab*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/nosuch
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/d?
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/D*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*/e.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/**
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/.*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/.hid/*
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/`echo a.x`
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/`=1+1`.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/{a,nosuch}.x
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/[
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/{
echo execute('ls')
"---
call mkdir("t/d1", "p")
call mkdir("t/d2")
call mkdir("t/.hid")
for f in ["a.x", "b.x", "c.y", "d1/e.x", "d2/f.x", ".hid/z.x", ".dot.x", "sp ace.x", "A.X", "ab", "abc.txt", "a~", "z.bak", "m.h", "n.o", "[br].x", "q{1}.x", "$d.x", "k.x~"]
  call writefile(["l"], "t/" . f, "p")
endfor
e t/*[
echo execute('ls')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | cd d1
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | cd d1 | cd -
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | cd -
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd -
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd nosuch
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t/a.x
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | cd ..
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | cd . | cd d1
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | e a.x | cd d1
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | e a.x | cd d1 | echo expand("%") bufname("%")
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
e t/a.x | cd t | echo bufname("%") expand("%") expand("%:p:t")
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
e t/a.x | cd t | e d1/e.x | echo execute("ls")
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
e t/a.x | e t/d1/e.x | cd t/d1 | echo execute("ls")
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | cd d1 | cd | cd -
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
lcd t
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
tcd t
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
chdir t
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t/d1/
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd "t"
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | pwd
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | cd d1 | pwd | cd .. | pwd
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
"---
call mkdir("t/d1", "p")
call writefile(["l"], "t/d1/e.x")
call writefile(["l"], "t/a.x")
let g:top = fnamemodify(getcwd(), ":t")
cd t | e a.x | e d1/e.x | cd d1 | echo expand("#") expand("%") bufname("#")
echo (fnamemodify(getcwd(), ':t')[0:2] ==# 'tmp' || fnamemodify(getcwd(), ':t')[0] ==# 'c' ? 'TOP' : fnamemodify(getcwd(), ':t')) string(map(range(1, bufnr('$')), 'bufname(v:val)'))
echo expand('%') expand('#')
