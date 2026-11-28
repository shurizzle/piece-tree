" File names: `~`, `~user` and `$VAR`/`${VAR}` are expanded by every command that takes one
" (`expand_filename()`), and a backslash keeps the char after it as written. The checks ask `:ls`
" whether the name holds what it should, so no path of this machine reaches a golden; `:e` itself
" says nothing, `'shortmess'` `F` being on by default (a file info that leaks here would show).
e ~/rim_fname_probe
echo stridx(execute('ls'), '~/rim_fname_probe') >= 0
"---
" `~user`: the home directory of that user (`$USER` here, so `~` again in the listing).
let g:u = $USER
execute 'e ~' . g:u . '/rim_fname_probe'
echo stridx(execute('ls'), '~/rim_fname_probe') >= 0
"---
" `:e`/`:sp` expand wildcards: a `~user` there is no user for says `E79` after a blank line, as a plain
" message (`:r`/`:w` take the name as written).
e ~rim_no_such_user_at_all/rim_fname_probe
"---
let $RIM_FNAME = '/tmp/rim_fname_probe'
e $RIM_FNAME
echo stridx(execute('ls'), $RIM_FNAME) >= 0
"---
let $RIM_FNAME = '/tmp/rim_fname_probe'
e ${RIM_FNAME}
echo stridx(execute('ls'), '/tmp/rim_fname_probe') >= 0
"---
let $RIM_FNAME = '/tmp/rim_fname_probe'
e \$RIM_FNAME
echo stridx(execute('ls'), '$RIM_FNAME') >= 0
echo stridx(execute('ls'), $RIM_FNAME) >= 0
"---
" An unset `$VAR` is removed; a `${VAR}` one is kept as written.
e $RIM_FNAME_NOT_SET_AT_ALL/x
echo stridx(execute('ls'), '$RIM_FNAME_NOT_SET_AT_ALL/x') >= 0
"---
e ${RIM_FNAME_NOT_SET_AT_ALL}/x
echo stridx(execute('ls'), '${RIM_FNAME_NOT_SET_AT_ALL}/x') >= 0
