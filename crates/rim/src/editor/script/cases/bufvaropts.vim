set ts=8 sw=8 noet
let d = getbufvar(1, '&')
echo len(d)
for k in sort(keys(d))
  echo k . '=' . string(d[k])
endfor
"---
set ts=8 sw=8 noet
let d = getbufvar(1, '&')
for k in sort(keys(d))
  echo k . '=' . string(d[k])
endfor
"---
set ts=8 sw=8 noet
badd x.y
let d = getbufvar(2, '&')
echo len(d) d.buflisted d.buftype
let d = getbufvar('x.y', '&', 'dflt')
echo len(d)
"---
set ts=3 sw=8 noet
let d = getbufvar(1, '&')
echo d.tabstop d.shiftwidth d.expandtab
"---
set ts=8 sw=8 noet
echo getbufvar(1, '&')->len() getbufvar(9, '&') getbufvar(9, '&', 7)
