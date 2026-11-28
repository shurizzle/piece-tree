call feedkeys("q::let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
call feedkeys("q::let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
call feedkeys("q::let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
sp
call feedkeys("q::let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
b1
call feedkeys("q::let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
call feedkeys("q::let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
enew
e /nonexistent/a
enew
call feedkeys("q::let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
call feedkeys("q/:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
call feedkeys("q/:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
call feedkeys("q/:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
sp
call feedkeys("q/:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
b1
call feedkeys("q/:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
call feedkeys("q/:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
enew
e /nonexistent/a
enew
call feedkeys("q/:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
call feedkeys("q?:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
call feedkeys("q?:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
call feedkeys("q?:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
sp
call feedkeys("q?:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
e /nonexistent/b
b1
call feedkeys("q?:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
call feedkeys("q?:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
"---
enew
e /nonexistent/a
enew
call feedkeys("q?:let g:o = execute('ls')\<CR>:let g:l = execute('ls!')\<CR>:let g:w = winnr('$') . ' ' . bufnr('%') . ' ' . bufnr('#') . ' ' . bufnr('$') . '|' . expand('%') . '|' . expand('#') . '|' . bufname('%') . '|' . bufname('$') . '|' . buflisted(bufnr('%')) . bufloaded(bufnr('%')) . bufexists(bufnr('$') + 1)\<CR>:let g:a = execute('ls a') . execute('ls %') . execute('ls #') . execute('ls h') . execute('ls +')\<CR>\<C-c>", "xt")
echo g:o
echo g:l
echo g:w
echo g:a
echo execute('ls')
echo bufnr('$') winnr('$') bufnr('%')
