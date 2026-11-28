set nomore
let g:out = []
let g:r2 = []
let g:cur = -1
enew
for cp in range(0x100, 0x2FFFF)
  if cp >= 0xD800 && cp <= 0xDFFF | continue | endif
  call setline(1, 'a' . nr2char(cp) . 'a')
  " word class equal to ASCII word (2): the char stays in the same word as 'a'
  normal! 0
  let s = searchpos('\%2c.', 'cn')
  normal! 0e
  let e = col('.')
  " e moves to end of first word: if the char is class 2, e lands on the last 'a'
  let same = (e == strlen('a' . nr2char(cp) . 'a'))
  if same
    if g:cur < 0 | let g:cur = cp | let g:prev = cp | elseif cp == g:prev + 1 | let g:prev = cp | else | call add(g:r2, [g:cur, g:prev]) | let g:cur = cp | let g:prev = cp | endif
  endif
endfor
if g:cur >= 0 | call add(g:r2, [g:cur, g:prev]) | endif
call writefile([string(g:r2)], 'cls.out')
