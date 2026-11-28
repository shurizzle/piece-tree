echo fnameescape("a b")
echo shellescape("a b")
echo shellescape("a b", 1)
echo shellescape("a b", 0)
echo shellescape("a b", v:true)
"---
echo fnameescape("a\\b")
echo shellescape("a\\b")
echo shellescape("a\\b", 1)
echo shellescape("a\\b", 0)
echo shellescape("a\\b", v:true)
"---
echo fnameescape(">x")
echo shellescape(">x")
echo shellescape(">x", 1)
echo shellescape(">x", 0)
echo shellescape(">x", v:true)
"---
echo fnameescape("+x")
echo shellescape("+x")
echo shellescape("+x", 1)
echo shellescape("+x", 0)
echo shellescape("+x", v:true)
"---
echo fnameescape("-")
echo shellescape("-")
echo shellescape("-", 1)
echo shellescape("-", 0)
echo shellescape("-", v:true)
"---
echo fnameescape("--")
echo shellescape("--")
echo shellescape("--", 1)
echo shellescape("--", 0)
echo shellescape("--", v:true)
"---
echo fnameescape("a%b#c")
echo shellescape("a%b#c")
echo shellescape("a%b#c", 1)
echo shellescape("a%b#c", 0)
echo shellescape("a%b#c", v:true)
"---
echo fnameescape("a$b`c")
echo shellescape("a$b`c")
echo shellescape("a$b`c", 1)
echo shellescape("a$b`c", 0)
echo shellescape("a$b`c", v:true)
"---
echo fnameescape("it's")
echo shellescape("it's")
echo shellescape("it's", 1)
echo shellescape("it's", 0)
echo shellescape("it's", v:true)
"---
echo fnameescape("a!b")
echo shellescape("a!b")
echo shellescape("a!b", 1)
echo shellescape("a!b", 0)
echo shellescape("a!b", v:true)
"---
echo fnameescape("a\nb")
echo shellescape("a\nb")
echo shellescape("a\nb", 1)
echo shellescape("a\nb", 0)
echo shellescape("a\nb", v:true)
"---
echo fnameescape("x[y]{z}")
echo shellescape("x[y]{z}")
echo shellescape("x[y]{z}", 1)
echo shellescape("x[y]{z}", 0)
echo shellescape("x[y]{z}", v:true)
"---
echo fnameescape("a*?")
echo shellescape("a*?")
echo shellescape("a*?", 1)
echo shellescape("a*?", 0)
echo shellescape("a*?", v:true)
"---
echo fnameescape("\"q\"")
echo shellescape("\"q\"")
echo shellescape("\"q\"", 1)
echo shellescape("\"q\"", 0)
echo shellescape("\"q\"", v:true)
"---
echo fnameescape("a|b<c")
echo shellescape("a|b<c")
echo shellescape("a|b<c", 1)
echo shellescape("a|b<c", 0)
echo shellescape("a|b<c", v:true)
"---
echo fnameescape("")
echo shellescape("")
echo shellescape("", 1)
echo shellescape("", 0)
echo shellescape("", v:true)
"---
echo fnameescape("é ü")
echo shellescape("é ü")
echo shellescape("é ü", 1)
echo shellescape("é ü", 0)
echo shellescape("é ü", v:true)
"---
echo fnameescape("<cword> x")
echo shellescape("<cword> x")
echo shellescape("<cword> x", 1)
echo shellescape("<cword> x", 0)
echo shellescape("<cword> x", v:true)
"---
echo fnameescape("%")
echo shellescape("%")
echo shellescape("%", 1)
echo shellescape("%", 0)
echo shellescape("%", v:true)
"---
echo fnameescape("#")
echo shellescape("#")
echo shellescape("#", 1)
echo shellescape("#", 0)
echo shellescape("#", v:true)
"---
echo fnameescape("a;b&c(d)")
echo shellescape("a;b&c(d)")
echo shellescape("a;b&c(d)", 1)
echo shellescape("a;b&c(d)", 0)
echo shellescape("a;b&c(d)", v:true)
"---
set shell=/bin/csh
echo shellescape('a!b')
echo shellescape("a\nb")
echo shellescape('a!b', 1)
echo shellescape("a\nb", 1)
echo shellescape('%x', 1)
"---
set shell=/usr/bin/fish
echo shellescape('a\b')
echo shellescape('a\b', 1)
"---
echo fnameescape()
"---
echo shellescape()
"---
echo shellescape('a', 1, 2)
"---
echo fnameescape([1])
