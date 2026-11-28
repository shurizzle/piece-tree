set nonumber laststatus=0 noruler noshowmode noshowcmd
call setline(1, ["abc\tdef", "a\tb\tc", "日本語abc", "x", "", "\t\tz"])
function! Row(r)
  let base = screenattr(1, 60)
  return join(map(range(1, 24), {_, c -> (a:r == winline() && c == wincol()) ? '?' : (screenattr(a:r, c) != base ? 'X' : '.')}), '')
endfunction
function! Show(ts, keys)
  execute 'set tabstop=' . a:ts
  execute "normal! gg0" . a:keys
  redraw
  call writefile([a:ts . "\t" . a:keys . "\t" . join(map(range(1, 6), {_, r -> Row(r)}), '|')], 'probe2.out', 'a')
  execute "normal! \<Esc>"
endfunction
call writefile([], 'probe2.out')
for ts in [4, 8]
  for s in ["", "1l", "2l", "3l", "4l", "5l", "$"]
    for v in ["j", "jj", "jjj", "jjjjj"]
      for h in ["", "l", "ll", "3l", "h", "$"]
        call Show(ts, s . "\<C-v>" . v . h)
      endfor
    endfor
  endfor
endfor
