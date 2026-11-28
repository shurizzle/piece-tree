echo expand("<sflnum>")
function! F()
  echo expand("<sflnum>") expand("<slnum>")
  echo 1
  echo expand("<sflnum>") expand("<slnum>")
endfunction
call F()
call F()
"---
function! F()
  return expand("<sflnum>")
endfunction
echo F()
echo F() + F()
"---
function! G()
  return expand("<sflnum>")
endfunction
function! F()
  return G()
endfunction
echo F()
"---
let l = "<sflnum>"
echo expand(l)
execute "echo expand(\"<sflnum>\")"
"---
set shell=/bin/sh
for n in ["a b", "a'b", "a!b", "a\\b", "a\nb", "", "x"]
  echo string(fnamemodify(n, ":S")) string(fnamemodify(n, ":t:S")) string(fnamemodify(n, ":S:S"))
endfor
"---
set shell=/bin/bash
for n in ["a b", "a'b", "a!b", "a\\b", "a\nb", "", "x"]
  echo string(fnamemodify(n, ":S")) string(fnamemodify(n, ":t:S")) string(fnamemodify(n, ":S:S"))
endfor
"---
set shell=/bin/zsh
for n in ["a b", "a'b", "a!b", "a\\b", "a\nb", "", "x"]
  echo string(fnamemodify(n, ":S")) string(fnamemodify(n, ":t:S")) string(fnamemodify(n, ":S:S"))
endfor
"---
set shell=/bin/csh
for n in ["a b", "a'b", "a!b", "a\\b", "a\nb", "", "x"]
  echo string(fnamemodify(n, ":S")) string(fnamemodify(n, ":t:S")) string(fnamemodify(n, ":S:S"))
endfor
"---
set shell=/usr/bin/fish
for n in ["a b", "a'b", "a!b", "a\\b", "a\nb", "", "x"]
  echo string(fnamemodify(n, ":S")) string(fnamemodify(n, ":t:S")) string(fnamemodify(n, ":S:S"))
endfor
"---
set shell=sh
for n in ["a b", "a'b", "a!b", "a\\b", "a\nb", "", "x"]
  echo string(fnamemodify(n, ":S")) string(fnamemodify(n, ":t:S")) string(fnamemodify(n, ":S:S"))
endfor
"---
set shell=tcsh
for n in ["a b", "a'b", "a!b", "a\\b", "a\nb", "", "x"]
  echo string(fnamemodify(n, ":S")) string(fnamemodify(n, ":t:S")) string(fnamemodify(n, ":S:S"))
endfor
"---
let r = []
try
  execute "set isfname=" . escape("", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("@,48-57,/,.", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("@,48-57,/,.,-,_,+,,,#,$,%,~,=,:", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("a-z", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("^a-z", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("@,^@", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("1-300", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("x-a", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("@,", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("abc,", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("200-255", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("@-@", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("^/", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("65-90,a-z,/", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
let r = []
try
  execute "set isfname=" . escape("=,^=", " \\|")
  call add(r, "ok " . &isfname)
catch
  call add(r, v:exception)
endtry
echo r
"---
execute "set isfname=" . escape("@,48-57,/,.,-,_,+,,,#,$,%,~,=", " \\|")
execute "normal! ifile.txt:12 and (path/to/f.c)\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,-,_,+,,,#,$,%,~,=", " \\|")
execute "normal! ia=b,c d\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,-,_,+,,,#,$,%,~,=", " \\|")
execute "normal! ix=/tmp/y.z\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,-,_,+,,,#,$,%,~,=", " \\|")
execute "normal! ihttp://example.com:80/x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,-,_,+,,,#,$,%,~,=", " \\|")
execute "normal! i\u00e9/\u00fc.txt x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.", " \\|")
execute "normal! ifile.txt:12 and (path/to/f.c)\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.", " \\|")
execute "normal! ia=b,c d\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.", " \\|")
execute "normal! ix=/tmp/y.z\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.", " \\|")
execute "normal! ihttp://example.com:80/x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.", " \\|")
execute "normal! i\u00e9/\u00fc.txt x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,:", " \\|")
execute "normal! ifile.txt:12 and (path/to/f.c)\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,:", " \\|")
execute "normal! ia=b,c d\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,:", " \\|")
execute "normal! ix=/tmp/y.z\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,:", " \\|")
execute "normal! ihttp://example.com:80/x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,:", " \\|")
execute "normal! i\u00e9/\u00fc.txt x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,=,,", " \\|")
execute "normal! ifile.txt:12 and (path/to/f.c)\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,=,,", " \\|")
execute "normal! ia=b,c d\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,=,,", " \\|")
execute "normal! ix=/tmp/y.z\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,=,,", " \\|")
execute "normal! ihttp://example.com:80/x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)
"---
execute "set isfname=" . escape("@,48-57,/,.,=,,", " \\|")
execute "normal! i\u00e9/\u00fc.txt x\<Esc>0"
let r = []
for i in range(strchars(getline(1)))
  execute "normal! 0" . (i > 0 ? i . "l" : "")
  call add(r, expand("<cfile>"))
endfor
echo string(r)

