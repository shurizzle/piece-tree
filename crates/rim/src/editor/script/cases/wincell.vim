set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | wincmd j | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | sp | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | wincmd l | sp | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | wincmd j | vs | vs
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
vs | sp | wincmd l | vs | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["\t\t\tx\t\ty\t\tz\t\t\tw"], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! $
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 5|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 0
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 60|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat(["a\t日b\tc" . repeat("é", 70)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 150|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 30|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
redraw
execute "normal! G"
execute "normal! 2G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("\x01a", 60)], 40))
set number
sp | vs | vs | wincmd j | sp
wincmd t
execute "normal! 3G"
normal! 100|
split
wincmd p
execute "normal! 5G"
echo winnr() winnr("j") winnr("k") winnr("h") winnr("l") winnr("2j") winnr("2l")
wincmd j
echo winnr()
wincmd l
echo winnr()
wincmd k
echo winnr()
wincmd h
echo winnr()
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 12G"
normal! 0
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 30G"
normal! 0
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
execute "normal! 20G"
normal! 0
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 12G"
normal! $
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 30G"
normal! $
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
execute "normal! 20G"
normal! $
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 12G"
normal! 30|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 30G"
normal! 30|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
execute "normal! 20G"
normal! 30|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 12G"
normal! 60|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | sp | wincmd l | sp
wincmd t
execute "normal! 30G"
normal! 60|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | sp | wincmd l | sp
execute "normal! 20G"
normal! 60|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 12G"
normal! 0
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 30G"
normal! 0
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
execute "normal! 20G"
normal! 0
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 12G"
normal! $
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 30G"
normal! $
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
execute "normal! 20G"
normal! $
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 12G"
normal! 30|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 30G"
normal! 30|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
execute "normal! 20G"
normal! 30|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 12G"
normal! 60|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | vs | wincmd j | vs
wincmd t
execute "normal! 30G"
normal! 60|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | vs | wincmd j | vs
execute "normal! 20G"
normal! 60|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 12G"
normal! 0
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 30G"
normal! 0
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
execute "normal! 20G"
normal! 0
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 12G"
normal! $
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 30G"
normal! $
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
execute "normal! 20G"
normal! $
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 12G"
normal! 30|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 30G"
normal! 30|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
execute "normal! 20G"
normal! 30|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
vs | vs | sp
wincmd t
execute "normal! 12G"
normal! 60|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
vs | vs | sp
wincmd t
execute "normal! 30G"
normal! 60|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
vs | vs | sp
execute "normal! 20G"
normal! 60|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 12G"
normal! 0
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 30G"
normal! 0
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
execute "normal! 20G"
normal! 0
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 12G"
normal! $
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 30G"
normal! $
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
execute "normal! 20G"
normal! $
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 12G"
normal! 30|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 30G"
normal! 30|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
execute "normal! 20G"
normal! 30|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("x", 400)], 40))
sp | sp | vs
wincmd t
execute "normal! 12G"
normal! 60|
resize 5
echo winnr("j") winnr("l")
close
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat(["abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz0123456789"], 40))
sp | sp | vs
wincmd t
execute "normal! 30G"
normal! 60|
wincmd =
echo winnr("j") winnr("l")
vertical resize 20
echo winnr("j") winnr("l")
redraw
echo winnr("j") winnr("l")
"---
set ts=8 sw=8 noet
call setline(1, repeat([repeat("日本語", 30)], 40))
sp | sp | vs
execute "normal! 20G"
normal! 60|
only
sp
vs
echo winnr("j") winnr("l")
wincmd t
echo winnr("j") winnr("l")
execute "normal! G"
wincmd b
wincmd t
echo winnr("j") winnr("l")
