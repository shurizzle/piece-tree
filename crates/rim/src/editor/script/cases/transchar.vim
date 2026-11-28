set ts=8 sw=8
let s = "a" . nr2char(1) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(2) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(11) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(12) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(10) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(27) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(31) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(127) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(128) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(133) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(159) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(160) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(173) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(255) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(768) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(847) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(1564) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(6158) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8203) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8204) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8205) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8206) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8207) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8232) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8234) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8238) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8288) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8294) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8303) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(12288) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(57344) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65279) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65529) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65530) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65531) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65533) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65534) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65535) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(65536) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(128512) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(1114111) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(888) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(131071) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(8233) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
let s = "a" . nr2char(133) . "b"
call setline(1, s)
echo strdisplaywidth(s) strwidth(s) len(s)
normal! 0l
echo virtcol(".") col(".") virtcol("$") col("$")
normal! $
echo virtcol(".") col(".")
normal! 2|
echo virtcol(".") col(".")
normal! 3|
echo virtcol(".") col(".")
normal! 5|
echo virtcol(".") col(".")
execute "normal! 0l"
echo getcurpos()[2:4]
echo strdisplaywidth(s, 3) strdisplaywidth(s . "\t", 5)
"---
set ts=8 sw=8
call setline(1, "\x01\x02\x03\x7f\x01\x02\x03\x7f\x01\x02\x03\x7f")
normal! $
echo virtcol(".") col(".") strdisplaywidth(getline(1))
"---
set ts=8 sw=8
call setline(1, "a\tb\x01\tc")
set ts=4
echo strdisplaywidth(getline(1)) virtcol("$")
normal! 4|
echo col(".")
"---
set ts=8 sw=8
call setline(1, repeat("\x01", 50))
normal! $
echo virtcol(".")
normal! 33|
echo col(".") virtcol(".")
normal! 34|
echo col(".") virtcol(".")
echo virtcol([1, 40])
"---
set ts=8 sw=8
call setline(1, repeat("\u200b", 12))
normal! 40|
echo col(".") virtcol(".")
normal! 7|
echo col(".") virtcol(".")
"---
set ts=8 sw=8
call setline(1, ["\x01a", "b\x01"])
normal! j$
echo virtcol(".")
normal! k
echo col(".") virtcol(".")
"---
set ts=8 sw=8
call setline(1, "\x01\x01")
normal! l
echo col(".") virtcol(".")
normal! x
echo getline(1)
"---
set ts=8 sw=8
set list
call setline(1, "a\x01\tb")
echo strdisplaywidth(getline(1)) virtcol("$")
normal! $
echo virtcol(".")
"---
set ts=8 sw=8
call setline(1, "x\x01e\u0301\x02")
echo strdisplaywidth(getline(1)) virtcol("$")
normal! $
echo col(".") virtcol(".")
"---
set ts=8 sw=8
call setline(1, "\x01\u0301")
echo strdisplaywidth(getline(1)) virtcol("$")
"---
set ts=8 sw=8
echo strdisplaywidth("\x01") strdisplaywidth("\x7f") strdisplaywidth("\u0080") strdisplaywidth("\u200b") strdisplaywidth("a\x01", 1) strwidth("\x01") strwidth("\u200b\u0080")
