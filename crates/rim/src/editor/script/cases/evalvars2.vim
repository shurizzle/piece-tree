for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('%' . m) string(expand('%' . m)) string(expand('%' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#' . m) string(expand('#' . m)) string(expand('#' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#1' . m) string(expand('#1' . m)) string(expand('#1' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#2' . m) string(expand('#2' . m)) string(expand('#2' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#3' . m) string(expand('#3' . m)) string(expand('#3' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#0' . m) string(expand('#0' . m)) string(expand('#0' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#-1' . m) string(expand('#-1' . m)) string(expand('#-1' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#<1' . m) string(expand('#<1' . m)) string(expand('#<1' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#<' . m) string(expand('#<' . m)) string(expand('#<' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('##' . m) string(expand('##' . m)) string(expand('##' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#<0' . m) string(expand('#<0' . m)) string(expand('#<0' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#a' . m) string(expand('#a' . m)) string(expand('#a' . m, 0, 1))
endfor
"---
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#9999999999999999999' . m) string(expand('#9999999999999999999' . m)) string(expand('#9999999999999999999' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('%' . m) string(expand('%' . m)) string(expand('%' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#' . m) string(expand('#' . m)) string(expand('#' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#1' . m) string(expand('#1' . m)) string(expand('#1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#2' . m) string(expand('#2' . m)) string(expand('#2' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#3' . m) string(expand('#3' . m)) string(expand('#3' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#0' . m) string(expand('#0' . m)) string(expand('#0' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#-1' . m) string(expand('#-1' . m)) string(expand('#-1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<1' . m) string(expand('#<1' . m)) string(expand('#<1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<' . m) string(expand('#<' . m)) string(expand('#<' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('##' . m) string(expand('##' . m)) string(expand('##' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<0' . m) string(expand('#<0' . m)) string(expand('#<0' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#a' . m) string(expand('#a' . m)) string(expand('#a' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#9999999999999999999' . m) string(expand('#9999999999999999999' . m)) string(expand('#9999999999999999999' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('%' . m) string(expand('%' . m)) string(expand('%' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#' . m) string(expand('#' . m)) string(expand('#' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#1' . m) string(expand('#1' . m)) string(expand('#1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#2' . m) string(expand('#2' . m)) string(expand('#2' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#3' . m) string(expand('#3' . m)) string(expand('#3' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#0' . m) string(expand('#0' . m)) string(expand('#0' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#-1' . m) string(expand('#-1' . m)) string(expand('#-1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<1' . m) string(expand('#<1' . m)) string(expand('#<1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<' . m) string(expand('#<' . m)) string(expand('#<' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('##' . m) string(expand('##' . m)) string(expand('##' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<0' . m) string(expand('#<0' . m)) string(expand('#<0' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#a' . m) string(expand('#a' . m)) string(expand('#a' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#9999999999999999999' . m) string(expand('#9999999999999999999' . m)) string(expand('#9999999999999999999' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('%' . m) string(expand('%' . m)) string(expand('%' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#' . m) string(expand('#' . m)) string(expand('#' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#1' . m) string(expand('#1' . m)) string(expand('#1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#2' . m) string(expand('#2' . m)) string(expand('#2' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#3' . m) string(expand('#3' . m)) string(expand('#3' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#0' . m) string(expand('#0' . m)) string(expand('#0' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#-1' . m) string(expand('#-1' . m)) string(expand('#-1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<1' . m) string(expand('#<1' . m)) string(expand('#<1' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<' . m) string(expand('#<' . m)) string(expand('#<' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('##' . m) string(expand('##' . m)) string(expand('##' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<0' . m) string(expand('#<0' . m)) string(expand('#<0' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#a' . m) string(expand('#a' . m)) string(expand('#a' . m, 0, 1))
endfor
"---
e /nonexistent/dir/a.b.txt
e /nonexistent/other/c
b1
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#9999999999999999999' . m) string(expand('#9999999999999999999' . m)) string(expand('#9999999999999999999' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('%' . m) string(expand('%' . m)) string(expand('%' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#' . m) string(expand('#' . m)) string(expand('#' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#1' . m) string(expand('#1' . m)) string(expand('#1' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#2' . m) string(expand('#2' . m)) string(expand('#2' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#3' . m) string(expand('#3' . m)) string(expand('#3' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#0' . m) string(expand('#0' . m)) string(expand('#0' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#-1' . m) string(expand('#-1' . m)) string(expand('#-1' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<1' . m) string(expand('#<1' . m)) string(expand('#<1' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<' . m) string(expand('#<' . m)) string(expand('#<' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('##' . m) string(expand('##' . m)) string(expand('##' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#<0' . m) string(expand('#<0' . m)) string(expand('#<0' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#a' . m) string(expand('#a' . m)) string(expand('#a' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
for m in ['','<',':p',':t',':h',':r',':e',':t:r',':p:h',':p:t','<:t',':s?a?X?','xyz',':z',':e:e',':p:r',':h:h:h']
  echo string('#9999999999999999999' . m) string(expand('#9999999999999999999' . m)) string(expand('#9999999999999999999' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('%' . m) string(expand('%' . m)) string(expand('%' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#' . m) string(expand('#' . m)) string(expand('#' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#1' . m) string(expand('#1' . m)) string(expand('#1' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#2' . m) string(expand('#2' . m)) string(expand('#2' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#3' . m) string(expand('#3' . m)) string(expand('#3' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#0' . m) string(expand('#0' . m)) string(expand('#0' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#-1' . m) string(expand('#-1' . m)) string(expand('#-1' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#<1' . m) string(expand('#<1' . m)) string(expand('#<1' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#<' . m) string(expand('#<' . m)) string(expand('#<' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('##' . m) string(expand('##' . m)) string(expand('##' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#<0' . m) string(expand('#<0' . m)) string(expand('#<0' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#a' . m) string(expand('#a' . m)) string(expand('#a' . m, 0, 1))
endfor
"---
e /nonexistent/a
enew
for m in ['','<',':p',':t',':h',':r',':e',':t:r','<:t',':s?a?X?','xyz',':z',':e:e',':h:h:h']
  echo string('#9999999999999999999' . m) string(expand('#9999999999999999999' . m)) string(expand('#9999999999999999999' . m, 0, 1))
endfor
"---
e /nonexistent/a
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #
e #
echo execute("ls")
"---
e #
echo execute("ls")
"---
e %
echo execute("ls")
"---
e %:h
echo execute("ls")
"---
e /nonexistent/a
e %
echo execute("ls")
"---
e /nonexistent/a
e %:h/x
echo execute("ls")
"---
e /nonexistent/a/b.c
e %<
echo execute("ls")
"---
e /nonexistent/a/b.c
e %<.d
echo execute("ls")
"---
e /nonexistent/a/b.c
e %:r.d
echo execute("ls")
"---
e /nonexistent/a/b.c
e #1
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #1
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #2
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #3
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #0
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e ##
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e \#
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e \%
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e x\#y
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e x#y
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e x%y
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #x
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e %%
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e %#
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #.x
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #:t
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #:h
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <cword>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <abuf>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <afile>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <amatch>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <sfile>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <slnum>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <sflnum>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <stack>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <script>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <SID>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <cfile>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <cexpr>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <cWORD>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <foo>
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e <
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e a<b
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
sp #
echo winnr("$") expand("%") expand("#")
"---
e /nonexistent/a
e /nonexistent/b
sp %
echo winnr("$") expand("%") expand("#")
"---
e /nonexistent/a
e /nonexistent/b
vs #
echo winnr("$") expand("%") expand("#")
"---
e /nonexistent/a
e /nonexistent/b
new #
echo winnr("$") expand("%") expand("#")
"---
e /nonexistent/a
e /nonexistent/b
sp #1
echo winnr("$") expand("%") expand("#")
"---
e /nonexistent/a
sp #
echo winnr('$') expand('%') expand('#')
"---
e /nonexistent/a
e /nonexistent/b
execute "e " . expand("#")
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #|ls
"---
e /nonexistent/a
e /nonexistent/b
e # | ls
"---
e /nonexistent/a
e /nonexistent/b
e #" c
echo execute("ls")
"---
e /nonexistent/a b
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/a b
e /nonexistent/b
echo expand("#")
e #
echo execute("ls")
"---
e /nonexistent/a\ b
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/a#b
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/a%b
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/$x
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/~x
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/日本語
e /nonexistent/b
e #
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #:s?a?c?
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #:s?a?c?:h
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #:z
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e #:p:p
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #<<
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #<.c
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #1<
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #<1
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #<2
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #-
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #-1
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #--1
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #01
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #001
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #1x
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #4294967297
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #9223372036854775807
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e #99999999999999999999
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e # #
echo execute("ls")
"---
e /nonexistent/a.b
e /nonexistent/b
e x# #
echo execute("ls")
"---
echo expand("<sfile>")
echo expand("<slnum>")
echo expand("<sflnum>")
echo expand("<stack>")
echo expand("<script>")
echo expand("<SID>")
"---
echo expand("<sfile>:t")
echo expand("<sfile>:p:t")
echo expand("<script>:t")
"---
function! F()
  echo expand("<sfile>")
  echo expand("<slnum>")
  echo expand("<stack>:t")
endfunction
call F()
"---
function! F()
  return expand("<sfile>")
endfunction
echo F()
echo F() . F()
"---
function! G()
  echo expand("<sfile>")
endfunction
function! F()
  call G()
endfunction
call F()
"---
function! F()
  echo expand("<script>:t")
  echo expand("<SID>") =~ "<SNR>\d\+_"
endfunction
call F()
"---
echo expand("<afile>")
echo expand("<abuf>")
echo expand("<amatch>")
echo expand("<cword>")
echo expand("<cfile>")
"---
echo expand("<sfile>", 0, 1)
echo expand("<abuf>", 0, 1)
echo expand("<abuf>", 1, 1)
echo expand("%", 1)
echo expand("%", [])
echo expand([])
echo expand(1)
echo expand("")
echo expand(v:null)
"---
echo expand("$HOME") == $HOME
echo expand("~") == $HOME
echo expand("~/x") == $HOME . "/x"
echo expand("$NOSUCHVAR_X")
echo expand("foo")
echo expand("foo bar")
echo expand("/nonexistent/x")
echo expand("$HOME/x", 0, 1) == [$HOME . "/x"]
echo expand("/nonexistent/x", 0, 1)
"---
execute "normal! ia/b.txt c\<Esc>0"
echo expand("<cfile>")
normal! w
echo expand("<cfile>")
normal! $
echo expand("<cfile>")
normal! 0
echo expand("<cword>")
echo expand("<cWORD>")
echo expand("<cexpr>")
"---
execute "normal! ifoo.bar baz\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ia->b[1].c d\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ix = y[i]->z;\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i  \u65e5\u672c\u8a9e abc\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ifile.txt:12 and (path/to/f.c)\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ihttp://example.com:80/x?y=1&z=2 end\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! isee \"~/x/y.z\", ok\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ifile:///tmp/x y\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! iC:\\dir\\f.c x\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ia\\ b c\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i..\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i...x\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ix..\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i[a]\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ia]\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i(((\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ia.b.c.d\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! ié/ü.txt\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i!?;\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i.,;:x,.\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! itmp/x.y.\<Esc>"
let r = []
for i in range(strchars(getline(1)))
  execute 'normal! 0' . (i > 0 ? i . 'l' : '')
  call add(r, [i + 1, expand("<cword>"), expand("<cWORD>"), expand("<cexpr>"), expand("<cfile>")])
endfor
for x in r | echo string(x) | endfor
"---
execute "normal! i/nonexistent/x1\<Esc>0"
e <cfile>
echo execute("ls")
"---
execute "normal! i/nonexistent/x1\<Esc>0"
e <cword>
echo execute("ls")
"---
execute "normal! i/nonexistent/x1\<Esc>0"
e <cWORD>
echo execute("ls")
"---
execute "normal! i/nonexistent/x1\<Esc>$"
e <cfile>:t
echo execute("ls")
"---
execute "normal! iab /nonexistent/x2 cd\<Esc>0"
e <cfile>
echo execute("ls")
"---
execute "normal! iab /nonexistent/x2 cd\<Esc>0"
e <cword>
echo execute("ls")
"---
execute "normal! iab /nonexistent/x2 cd\<Esc>0"
e <cWORD>
echo execute("ls")
"---
execute "normal! iab /nonexistent/x2 cd\<Esc>$"
e <cfile>:t
echo execute("ls")



