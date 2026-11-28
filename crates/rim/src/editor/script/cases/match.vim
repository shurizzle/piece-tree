echo match("abcabc","a*",2)
"---
echo match("abcabc","a*",3,1)
"---
echo match("abcabc","^a",6)
"---
echo match("abcabc","[a-c]",2)
"---
echo match("abcabc","[a-c]",3,1)
"---
echo match("abcabc","[a-c]",2,0)
"---
echo match("abcabc","X",0)
"---
echo match("abcabc","X",0,2)
"---
echo match("abcabc","X",2,0)
"---
echo match("abcabc","日",0,2)
"---
echo match("abcabc","日",2,0)
"---
echo match("abcabc","zz",0)
"---
echo match("abcabc","zz",10)
"---
echo match("abcabc","zz",0,2)
"---
echo match("abcabc","b[ab]",-1)
"---
echo match("abcabc","b[ab]",1,2)
"---
echo match("","b",2,0)
"---
echo match("","a*")
"---
echo match("","a*",6)
"---
echo match("","a*",0,2)
"---
echo match("","^a",0)
"---
echo match("","^a",10)
"---
echo match("","^a",0,2)
"---
echo match("","c$",2,0)
"---
echo match("","[a-c]")
"---
echo match("","[a-c]",-1)
"---
echo match("","[a-c]",1,2)
"---
echo match("","[a-c]",1,3)
"---
echo match("","X",3,1)
"---
echo match("",".",0,-1)
"---
echo match("","")
"---
echo match("","",6)
"---
echo match("","日",-1)
"---
echo match("","a.c",6)
"---
echo match("","a.c",0,-1)
"---
echo match("","b[ab]")
"---
echo match("","b[ab]",10)
"---
echo match("","b[ab]",6)
"---
echo match("","b[ab]",0,2)
"---
echo match("aXbXc","a*",0,-1)
"---
echo match("aXbXc","^a",3,1)
"---
echo match("aXbXc","c$",2,0)
"---
echo match("aXbXc","[a-c]",2,0)
"---
echo match("aXbXc","X")
"---
echo match("aXbXc","X",0)
"---
echo match("aXbXc","X",10)
"---
echo match("aXbXc","X",0,2)
"---
echo match("aXbXc",".",0)
"---
echo match("aXbXc",".",2)
"---
echo match("aXbXc",".",0,2)
"---
echo match("aXbXc",".",3,1)
"---
echo match("aXbXc","",2,0)
"---
echo match("aXbXc","日",2)
"---
echo match("aXbXc","日",3,1)
"---
echo match("aXbXc","日",0,-1)
"---
echo match("aXbXc","zz")
"---
echo match("aXbXc","zz",0)
"---
echo match("aXbXc","zz",10)
"---
echo match("aXbXc","zz",0,2)
"---
echo match("aXbXc","zz",1,3)
"---
echo match("aXbXc","b[ab]",-1)
"---
echo match("é日本a日本","b",0,-1)
"---
echo match("é日本a日本","a*",2,0)
"---
echo match("é日本a日本","^a",2,0)
"---
echo match("é日本a日本","^a",0,-1)
"---
echo match("é日本a日本","c$",2)
"---
echo match("é日本a日本","c$",0,-1)
"---
echo match("é日本a日本","[a-c]",-1)
"---
echo match("é日本a日本","",0,2)
"---
echo match("é日本a日本","日")
"---
echo match("é日本a日本","zz")
"---
echo match("é日本a日本","a.c")
"---
echo match("é日本a日本","a.c",-1)
"---
echo match("é日本a日本","b[ab]",0)
"---
echo match("é日本a日本","b[ab]",2,0)
"---
echo match("aaa","b",1,3)
"---
echo match("aaa","a*",6)
"---
echo match("aaa","a*",0,-1)
"---
echo match("aaa","^a")
"---
echo match("aaa","^a",0)
"---
echo match("aaa","^a",-1)
"---
echo match("aaa","c$",3,1)
"---
echo match("aaa","[a-c]",3,1)
"---
echo match("aaa","X",0)
"---
echo match("aaa","X",2)
"---
echo match("aaa","X",0,2)
"---
echo match("aaa","X",3,1)
"---
echo match("aaa",".",2)
"---
echo match("aaa",".",2,0)
"---
echo match("aaa","",3,1)
"---
echo match("aaa","日")
"---
echo match("aaa","日",10)
"---
echo match("aaa","日",1,3)
"---
echo match("aaa","zz",2)
"---
echo match("aaa","a.c",2)
"---
echo match("aaa","a.c",3,1)
"---
echo match("aaa","a.c",2,0)
"---
echo match("aaa","b[ab]",1,3)
"---
echo match("a\tb","b",-1)
"---
echo match("a\tb","a*",1,2)
"---
echo match("a\tb","a*",0,-1)
"---
echo match("a\tb","c$",-1)
"---
echo match("a\tb","X",6)
"---
echo match("a\tb","X",1,3)
"---
echo match("a\tb",".")
"---
echo match("a\tb",".",-1)
"---
echo match("a\tb",".",1,2)
"---
echo match("a\tb",".",1,3)
"---
echo match("a\tb","",2)
"---
echo match("a\tb","",3,1)
"---
echo match("a\tb","",0,-1)
"---
echo match("a\tb","日",3,1)
"---
echo match("a\tb","zz",0)
"---
echo match("a\tb","zz",1,2)
"---
echo match("a\tb","a.c",2)
"---
echo match("a\tb","a.c",0,-1)
"---
echo match("a\tb","b[ab]",0,2)
"---
echo match("a\tb","b[ab]",3,1)
"---
echo matchend("abcabc","b",0)
"---
echo matchend("abcabc","b",-1)
"---
echo matchend("abcabc","b",10)
"---
echo matchend("abcabc","b",1,2)
"---
echo matchend("abcabc","a*",3,1)
"---
echo matchend("abcabc","^a")
"---
echo matchend("abcabc","^a",2)
"---
echo matchend("abcabc","^a",3,1)
"---
echo matchend("abcabc","c$",1,2)
"---
echo matchend("abcabc","c$",0,-1)
"---
echo matchend("abcabc","[a-c]",2)
"---
echo matchend("abcabc","[a-c]",3,1)
"---
echo matchend("abcabc","[a-c]",0,-1)
"---
echo matchend("abcabc","X",2,0)
"---
echo matchend("abcabc","",6)
"---
echo matchend("abcabc","",1,2)
"---
echo matchend("abcabc","",0,-1)
"---
echo matchend("abcabc","日",6)
"---
echo matchend("abcabc","a.c",0,-1)
"---
echo matchend("abcabc","b[ab]",1,2)
"---
echo matchend("","b")
"---
echo matchend("","b",6)
"---
echo matchend("","b",1,2)
"---
echo matchend("","b",1,3)
"---
echo matchend("","a*",6)
"---
echo matchend("","a*",1,3)
"---
echo matchend("","^a",3,1)
"---
echo matchend("","^a",0,-1)
"---
echo matchend("","c$",1,2)
"---
echo matchend("","X",3,1)
"---
echo matchend("","")
"---
echo matchend("","",1,2)
"---
echo matchend("","",1,3)
"---
echo matchend("","日",0)
"---
echo matchend("","日",2)
"---
echo matchend("","日",10)
"---
echo matchend("","日",0,2)
"---
echo matchend("","a.c",0)
"---
echo matchend("","a.c",10)
"---
echo matchend("","a.c",1,2)
"---
echo matchend("","b[ab]")
"---
echo matchend("","b[ab]",0)
"---
echo matchend("","b[ab]",10)
"---
echo matchend("","b[ab]",1,3)
"---
echo matchend("aXbXc","b",2)
"---
echo matchend("aXbXc","b",0,-1)
"---
echo matchend("aXbXc","a*")
"---
echo matchend("aXbXc","a*",0,2)
"---
echo matchend("aXbXc","^a",2,0)
"---
echo matchend("aXbXc","c$",2)
"---
echo matchend("aXbXc","c$",2,0)
"---
echo matchend("aXbXc","c$",0,-1)
"---
echo matchend("aXbXc","[a-c]",10)
"---
echo matchend("aXbXc","X",-1)
"---
echo matchend("aXbXc","X",1,3)
"---
echo matchend("aXbXc",".",6)
"---
echo matchend("aXbXc",".",1,2)
"---
echo matchend("aXbXc","",2)
"---
echo matchend("aXbXc","",3,1)
"---
echo matchend("aXbXc","日",-1)
"---
echo matchend("aXbXc","日",2,0)
"---
echo matchend("aXbXc","zz",-1)
"---
echo matchend("aXbXc","a.c",6)
"---
echo matchend("aXbXc","a.c",1,3)
"---
echo matchend("aXbXc","b[ab]",2)
"---
echo matchend("aXbXc","b[ab]",3,1)
"---
echo matchend("aXbXc","b[ab]",0,-1)
"---
echo matchend("é日本a日本","a*",2)
"---
echo matchend("é日本a日本","a*",0,-1)
"---
echo matchend("é日本a日本","^a",0,-1)
"---
echo matchend("é日本a日本","X",0)
"---
echo matchend("é日本a日本","X",0,2)
"---
echo matchend("é日本a日本",".",2)
"---
echo matchend("é日本a日本",".",0,-1)
"---
echo matchend("é日本a日本","日",-1)
"---
echo matchend("é日本a日本","zz")
"---
echo matchend("é日本a日本","b[ab]",2,0)
"---
echo matchend("é日本a日本","b[ab]",0,-1)
"---
echo matchend("aaa","a*",1,2)
"---
echo matchend("aaa","^a",3,1)
"---
echo matchend("aaa","[a-c]",6)
"---
echo matchend("aaa","X")
"---
echo matchend("aaa","X",-1)
"---
echo matchend("aaa","X",10)
"---
echo matchend("aaa",".")
"---
echo matchend("aaa","",0)
"---
echo matchend("aaa","日",2)
"---
echo matchend("aaa","日",0,-1)
"---
echo matchend("aaa","zz")
"---
echo matchend("aaa","zz",1,3)
"---
echo matchend("aaa","a.c",0)
"---
echo matchend("aaa","a.c",0,2)
"---
echo matchend("aaa","b[ab]",2)
"---
echo matchend("aaa","b[ab]",2,0)
"---
echo matchend("aaa","b[ab]",0,-1)
"---
echo matchend("a\tb","b",3,1)
"---
echo matchend("a\tb","b",0,-1)
"---
echo matchend("a\tb","a*",0)
"---
echo matchend("a\tb","a*",10)
"---
echo matchend("a\tb","^a",2,0)
"---
echo matchend("a\tb","^a",0,-1)
"---
echo matchend("a\tb","c$",-1)
"---
echo matchend("a\tb","[a-c]")
"---
echo matchend("a\tb","[a-c]",0)
"---
echo matchend("a\tb","[a-c]",10)
"---
echo matchend("a\tb","[a-c]",0,2)
"---
echo matchend("a\tb",".",6)
"---
echo matchend("a\tb","",-1)
"---
echo matchend("a\tb","日",2,0)
"---
echo matchend("a\tb","zz",6)
"---
echo matchend("a\tb","zz",1,3)
"---
echo matchend("a\tb","a.c",-1)
"---
echo matchend("a\tb","b[ab]",2,0)
"---
echo matchstr("abcabc","b",2)
"---
echo matchstr("abcabc","a*")
"---
echo matchstr("abcabc","a*",-1)
"---
echo matchstr("abcabc","a*",1,3)
"---
echo matchstr("abcabc","c$",0)
"---
echo matchstr("abcabc","c$",0,2)
"---
echo matchstr("abcabc","[a-c]",6)
"---
echo matchstr("abcabc","[a-c]",0,-1)
"---
echo matchstr("abcabc","",0)
"---
echo matchstr("abcabc","日")
"---
echo matchstr("abcabc","日",1,3)
"---
echo matchstr("abcabc","zz",2,0)
"---
echo matchstr("abcabc","a.c")
"---
echo matchstr("abcabc","a.c",0)
"---
echo matchstr("abcabc","a.c",10)
"---
echo matchstr("abcabc","a.c",0,2)
"---
echo matchstr("abcabc","b[ab]",2)
"---
echo matchstr("","b",3,1)
"---
echo matchstr("","b",0,-1)
"---
echo matchstr("","a*",6)
"---
echo matchstr("","^a",10)
"---
echo matchstr("","^a",6)
"---
echo matchstr("","c$",-1)
"---
echo matchstr("","c$",1,2)
"---
echo matchstr("","[a-c]",0)
"---
echo matchstr("","[a-c]",10)
"---
echo matchstr("","[a-c]",0,2)
"---
echo matchstr("","[a-c]",3,1)
"---
echo matchstr("","X")
"---
echo matchstr("",".",6)
"---
echo matchstr("",".",1,2)
"---
echo matchstr("","",2)
"---
echo matchstr("","日",2,0)
"---
echo matchstr("","zz",-1)
"---
echo matchstr("","zz",6)
"---
echo matchstr("","a.c",2)
"---
echo matchstr("","a.c",2,0)
"---
echo matchstr("","b[ab]",2,0)
"---
echo matchstr("aXbXc","b",-1)
"---
echo matchstr("aXbXc","b",6)
"---
echo matchstr("aXbXc","b",1,3)
"---
echo matchstr("aXbXc","^a",0)
"---
echo matchstr("aXbXc","^a",0,2)
"---
echo matchstr("aXbXc","c$",6)
"---
echo matchstr("aXbXc","[a-c]",-1)
"---
echo matchstr("aXbXc","[a-c]",2,0)
"---
echo matchstr("aXbXc","[a-c]",1,3)
"---
echo matchstr("aXbXc","X",2)
"---
echo matchstr("aXbXc","X",3,1)
"---
echo matchstr("aXbXc",".",2)
"---
echo matchstr("aXbXc",".",2,0)
"---
echo matchstr("aXbXc",".",0,-1)
"---
echo matchstr("aXbXc","日",-1)
"---
echo matchstr("aXbXc","zz",2)
"---
echo matchstr("aXbXc","a.c",2,0)
"---
echo matchstr("aXbXc","b[ab]",2,0)
"---
echo matchstr("é日本a日本","b",2)
"---
echo matchstr("é日本a日本","b",0,-1)
"---
echo matchstr("é日本a日本","c$",0,-1)
"---
echo matchstr("é日本a日本","[a-c]",0)
"---
echo matchstr("é日本a日本","[a-c]",0,2)
"---
echo matchstr("é日本a日本","X")
"---
echo matchstr("é日本a日本","",2)
"---
echo matchstr("é日本a日本","",0,-1)
"---
echo matchstr("é日本a日本","b[ab]",2)
"---
echo matchstr("aaa","a*",-1)
"---
echo matchstr("aaa","^a",-1)
"---
echo matchstr("aaa","^a",1,2)
"---
echo matchstr("aaa","^a",1,3)
"---
echo matchstr("aaa","c$")
"---
echo matchstr("aaa","c$",6)
"---
echo matchstr("aaa","[a-c]",2)
"---
echo matchstr("aaa","[a-c]",2,0)
"---
echo matchstr("aaa","[a-c]",0,-1)
"---
echo matchstr("aaa","X",0)
"---
echo matchstr("aaa",".",-1)
"---
echo matchstr("aaa","",10)
"---
echo matchstr("aaa","",6)
"---
echo matchstr("aaa","日",2)
"---
echo matchstr("aaa","日",3,1)
"---
echo matchstr("aaa","日",0,-1)
"---
echo matchstr("aaa","zz")
"---
echo matchstr("aaa","zz",10)
"---
echo matchstr("a\tb","^a",2)
"---
echo matchstr("a\tb","^a",0,2)
"---
echo matchstr("a\tb","^a",3,1)
"---
echo matchstr("a\tb","c$",6)
"---
echo matchstr("a\tb","c$",1,2)
"---
echo matchstr("a\tb","[a-c]",2,0)
"---
echo matchstr("a\tb","X",0,-1)
"---
echo matchstr("a\tb",".",-1)
"---
echo matchstr("a\tb",".",1,2)
"---
echo matchstr("a\tb","",6)
"---
echo matchstr("a\tb","",1,2)
"---
echo matchstr("a\tb","日",0)
"---
echo matchstr("a\tb","日",-1)
"---
echo matchstr("a\tb","日",10)
"---
echo matchstr("a\tb","日",0,2)
"---
echo matchstr("a\tb","zz",10)
"---
echo matchstr("a\tb","zz",6)
"---
echo matchstr("a\tb","a.c",-1)
"---
echo matchstr("a\tb","a.c",1,2)
"---
echo matchstr("a\tb","b[ab]",0)
"---
echo matchstr("a\tb","b[ab]",-1)
"---
echo matchstr("a\tb","b[ab]",10)
"---
echo matchstr("a\tb","b[ab]",6)
"---
echo matchlist("abcabc","a*",1,3)
"---
echo matchlist("abcabc","^a",3,1)
"---
echo matchlist("abcabc","c$",1,2)
"---
echo matchlist("abcabc","[a-c]",2)
"---
echo matchlist("abcabc","X",-1)
"---
echo matchlist("abcabc","X",6)
"---
echo matchlist("abcabc",".",-1)
"---
echo matchlist("abcabc",".",1,2)
"---
echo matchlist("abcabc","")
"---
echo matchlist("abcabc","",10)
"---
echo matchlist("abcabc","",6)
"---
echo matchlist("abcabc","",0,2)
"---
echo matchlist("abcabc","",1,3)
"---
echo matchlist("abcabc","日",0)
"---
echo matchlist("abcabc","日",10)
"---
echo matchlist("abcabc","日",0,2)
"---
echo matchlist("abcabc","zz")
"---
echo matchlist("abcabc","zz",0)
"---
echo matchlist("abcabc","zz",10)
"---
echo matchlist("abcabc","a.c",1,2)
"---
echo matchlist("abcabc","b[ab]",0)
"---
echo matchlist("abcabc","b[ab]",10)
"---
echo matchlist("abcabc","b[ab]",0,2)
"---
echo matchlist("","b",6)
"---
echo matchlist("","b",1,2)
"---
echo matchlist("","b",1,3)
"---
echo matchlist("","a*",2,0)
"---
echo matchlist("","^a")
"---
echo matchlist("","^a",10)
"---
echo matchlist("","c$",3,1)
"---
echo matchlist("","[a-c]",1,2)
"---
echo matchlist("","X",2)
"---
echo matchlist("","X",0,2)
"---
echo matchlist("",".",2,0)
"---
echo matchlist("","",3,1)
"---
echo matchlist("","日",0,-1)
"---
echo matchlist("","a.c",2)
"---
echo matchlist("","a.c",3,1)
"---
echo matchlist("","a.c",0,-1)
"---
echo matchlist("","b[ab]",0,-1)
"---
echo matchlist("aXbXc","b")
"---
echo matchlist("aXbXc","b",6)
"---
echo matchlist("aXbXc","b",0,2)
"---
echo matchlist("aXbXc","a*")
"---
echo matchlist("aXbXc","a*",1,3)
"---
echo matchlist("aXbXc","^a",-1)
"---
echo matchlist("aXbXc","^a",6)
"---
echo matchlist("aXbXc","^a",1,2)
"---
echo matchlist("aXbXc","^a",1,3)
"---
echo matchlist("aXbXc","c$")
"---
echo matchlist("aXbXc","c$",6)
"---
echo matchlist("aXbXc","X")
"---
echo matchlist("aXbXc","X",0)
"---
echo matchlist("aXbXc","X",10)
"---
echo matchlist("aXbXc","X",0,2)
"---
echo matchlist("aXbXc",".",0)
"---
echo matchlist("aXbXc",".",2)
"---
echo matchlist("aXbXc",".",0,2)
"---
echo matchlist("aXbXc","")
"---
echo matchlist("aXbXc","",10)
"---
echo matchlist("aXbXc","",6)
"---
echo matchlist("aXbXc","日",-1)
"---
echo matchlist("aXbXc","日",1,2)
"---
echo matchlist("aXbXc","zz",2,0)
"---
echo matchlist("aXbXc","b[ab]")
"---
echo matchlist("aXbXc","b[ab]",0)
"---
echo matchlist("aXbXc","b[ab]",10)
"---
echo matchlist("aXbXc","b[ab]",0,2)
"---
echo matchlist("é日本a日本","b",-1)
"---
echo matchlist("é日本a日本","a*",2,0)
"---
echo matchlist("é日本a日本","c$",2)
"---
echo matchlist("é日本a日本","c$",0,2)
"---
echo matchlist("é日本a日本","[a-c]",0)
"---
echo matchlist("é日本a日本","X")
"---
echo matchlist("é日本a日本","",0)
"---
echo matchlist("é日本a日本","",0,2)
"---
echo matchlist("é日本a日本","日",2)
"---
echo matchlist("é日本a日本","日",2,0)
"---
echo matchlist("é日本a日本","zz",0)
"---
echo matchlist("é日本a日本","a.c",0)
"---
echo matchlist("é日本a日本","a.c",2)
"---
echo matchlist("é日本a日本","a.c",0,2)
"---
echo matchlist("é日本a日本","b[ab]",0)
"---
echo matchlist("é日本a日本","b[ab]",2,0)
"---
echo matchlist("aaa","b",0)
"---
echo matchlist("aaa","b",-1)
"---
echo matchlist("aaa","b",10)
"---
echo matchlist("aaa","a*",3,1)
"---
echo matchlist("aaa","a*",0,-1)
"---
echo matchlist("aaa","^a",2)
"---
echo matchlist("aaa","c$",0,-1)
"---
echo matchlist("aaa","[a-c]",0)
"---
echo matchlist("aaa","[a-c]",0,2)
"---
echo matchlist("aaa","X",2,0)
"---
echo matchlist("aaa",".",3,1)
"---
echo matchlist("aaa","",1,2)
"---
echo matchlist("aaa","",0,-1)
"---
echo matchlist("aaa","日",6)
"---
echo matchlist("aaa","zz",0,-1)
"---
echo matchlist("aaa","b[ab]",6)
"---
echo matchlist("aaa","b[ab]",0,-1)
"---
echo matchlist("a\tb","b",2)
"---
echo matchlist("a\tb","b",3,1)
"---
echo matchlist("a\tb","b",2,0)
"---
echo matchlist("a\tb","a*",0)
"---
echo matchlist("a\tb","a*",2)
"---
echo matchlist("a\tb","a*",0,2)
"---
echo matchlist("a\tb","c$")
"---
echo matchlist("a\tb","c$",1,3)
"---
echo matchlist("a\tb","[a-c]")
"---
echo matchlist("a\tb","[a-c]",10)
"---
echo matchlist("a\tb","[a-c]",1,3)
"---
echo matchlist("a\tb","X",6)
"---
echo matchlist("a\tb",".",-1)
"---
echo matchlist("a\tb",".",1,2)
"---
echo matchlist("a\tb","")
"---
echo matchlist("a\tb","",1,3)
"---
echo matchlist("a\tb","日",3,1)
"---
echo matchlist("a\tb","zz",-1)
"---
echo matchlist("a\tb","zz",10)
"---
echo matchlist("a\tb","a.c")
"---
echo matchlist("a\tb","a.c",1,2)
"---
echo matchlist("a\tb","a.c",1,3)
"---
echo matchlist("a\tb","b[ab]",3,1)
"---
echo matchstrpos("abcabc","b",2,0)
"---
echo matchstrpos("abcabc","b",0,-1)
"---
echo matchstrpos("abcabc","a*",2)
"---
echo matchstrpos("abcabc","a*",3,1)
"---
echo matchstrpos("abcabc","a*",0,-1)
"---
echo matchstrpos("abcabc","^a",3,1)
"---
echo matchstrpos("abcabc","^a",1,3)
"---
echo matchstrpos("abcabc","[a-c]",0,2)
"---
echo matchstrpos("abcabc","[a-c]",1,3)
"---
echo matchstrpos("abcabc","X",-1)
"---
echo matchstrpos("abcabc","X",1,2)
"---
echo matchstrpos("abcabc","X",1,3)
"---
echo matchstrpos("abcabc",".")
"---
echo matchstrpos("abcabc",".",0)
"---
echo matchstrpos("abcabc",".",10)
"---
echo matchstrpos("abcabc",".",1,2)
"---
echo matchstrpos("abcabc",".",0,2)
"---
echo matchstrpos("abcabc","",0,-1)
"---
echo matchstrpos("abcabc","日",0)
"---
echo matchstrpos("abcabc","日",0,2)
"---
echo matchstrpos("abcabc","zz",-1)
"---
echo matchstrpos("abcabc","zz",1,2)
"---
echo matchstrpos("abcabc","a.c",1,2)
"---
echo matchstrpos("abcabc","b[ab]",0,-1)
"---
echo matchstrpos("","a*",-1)
"---
echo matchstrpos("","a*",2,0)
"---
echo matchstrpos("","^a",2)
"---
echo matchstrpos("","^a",3,1)
"---
echo matchstrpos("","^a",0,-1)
"---
echo matchstrpos("","c$",0)
"---
echo matchstrpos("","c$",1,2)
"---
echo matchstrpos("","[a-c]",6)
"---
echo matchstrpos("","[a-c]",1,2)
"---
echo matchstrpos("","[a-c]",0,-1)
"---
echo matchstrpos("","[a-c]",1,3)
"---
echo matchstrpos("",".",1,3)
"---
echo matchstrpos("","",1,2)
"---
echo matchstrpos("","",1,3)
"---
echo matchstrpos("","日",2)
"---
echo matchstrpos("","日",0,-1)
"---
echo matchstrpos("","zz")
"---
echo matchstrpos("","zz",10)
"---
echo matchstrpos("","zz",6)
"---
echo matchstrpos("","zz",1,3)
"---
echo matchstrpos("","a.c",-1)
"---
echo matchstrpos("","a.c",10)
"---
echo matchstrpos("","a.c",1,2)
"---
echo matchstrpos("","b[ab]",2)
"---
echo matchstrpos("aXbXc","b",10)
"---
echo matchstrpos("aXbXc","b",6)
"---
echo matchstrpos("aXbXc","a*",3,1)
"---
echo matchstrpos("aXbXc","a*",2,0)
"---
echo matchstrpos("aXbXc","^a",6)
"---
echo matchstrpos("aXbXc","[a-c]")
"---
echo matchstrpos("aXbXc","[a-c]",6)
"---
echo matchstrpos("aXbXc","[a-c]",1,2)
"---
echo matchstrpos("aXbXc","X",6)
"---
echo matchstrpos("aXbXc","X",1,2)
"---
echo matchstrpos("aXbXc",".",0)
"---
echo matchstrpos("aXbXc",".",10)
"---
echo matchstrpos("aXbXc",".",0,2)
"---
echo matchstrpos("aXbXc","",0,-1)
"---
echo matchstrpos("aXbXc","日")
"---
echo matchstrpos("aXbXc","zz",-1)
"---
echo matchstrpos("aXbXc","a.c",-1)
"---
echo matchstrpos("aXbXc","a.c",2,0)
"---
echo matchstrpos("aXbXc","b[ab]",2)
"---
echo matchstrpos("aXbXc","b[ab]",3,1)
"---
echo matchstrpos("aXbXc","b[ab]",0,-1)
"---
echo matchstrpos("é日本a日本","a*",-1)
"---
echo matchstrpos("é日本a日本","^a",0)
"---
echo matchstrpos("é日本a日本","^a",2)
"---
echo matchstrpos("é日本a日本","^a",0,2)
"---
echo matchstrpos("é日本a日本","c$",-1)
"---
echo matchstrpos("é日本a日本","[a-c]",-1)
"---
echo matchstrpos("é日本a日本","X",2,0)
"---
echo matchstrpos("é日本a日本","日",2)
"---
echo matchstrpos("é日本a日本","a.c",0,-1)
"---
echo matchstrpos("é日本a日本","b[ab]",2)
"---
echo matchstrpos("aaa","b",-1)
"---
echo matchstrpos("aaa","b",6)
"---
echo matchstrpos("aaa","^a",-1)
"---
echo matchstrpos("aaa","c$",6)
"---
echo matchstrpos("aaa","c$",0,-1)
"---
echo matchstrpos("aaa","[a-c]",-1)
"---
echo matchstrpos("aaa","X",2)
"---
echo matchstrpos("aaa",".",2)
"---
echo matchstrpos("aaa",".",2,0)
"---
echo matchstrpos("aaa","",0,-1)
"---
echo matchstrpos("aaa","zz",1,3)
"---
echo matchstrpos("aaa","a.c",0,-1)
"---
echo matchstrpos("a\tb","b",1,2)
"---
echo matchstrpos("a\tb","b",0,-1)
"---
echo matchstrpos("a\tb","a*",0)
"---
echo matchstrpos("a\tb","a*",10)
"---
echo matchstrpos("a\tb","a*",1,2)
"---
echo matchstrpos("a\tb","a*",0,2)
"---
echo matchstrpos("a\tb","c$")
"---
echo matchstrpos("a\tb","c$",0,2)
"---
echo matchstrpos("a\tb","c$",1,3)
"---
echo matchstrpos("a\tb","X")
"---
echo matchstrpos("a\tb","X",6)
"---
echo matchstrpos("a\tb",".",6)
"---
echo matchstrpos("a\tb",".",1,2)
"---
echo matchstrpos("a\tb","")
"---
echo matchstrpos("a\tb","",0)
"---
echo matchstrpos("a\tb","",0,2)
"---
echo matchstrpos("a\tb","日",2,0)
"---
echo matchstrpos("a\tb","zz",-1)
"---
echo matchstrpos("a\tb","zz",2,0)
"---
echo matchstrpos("a\tb","a.c")
"---
echo matchstrpos("a\tb","a.c",1,3)
"---
echo matchstrpos("a\tb","b[ab]",-1)
"---
echo matchstrpos("a\tb","b[ab]",2,0)
"---
echo match(["ab","cd","ab"],"a",0,3)
"---
echo match(["ab","cd","ab"],"[0-9]")
"---
echo match(["ab","cd","ab"],"[0-9]",1)
"---
echo match(["ab","cd","ab"],"[0-9]",-1,1)
"---
echo match(["ab","cd","ab"],"x",-1)
"---
echo match(["ab","cd","ab"],".")
"---
echo match(["ab","cd","ab"],".",0)
"---
echo match(["ab","cd","ab"],".",1)
"---
echo match(["ab","cd","ab"],"",0)
"---
echo match(["ab","cd","ab"],"",-1)
"---
echo match(["ab","cd","ab"],"",-4)
"---
echo match(["ab","cd","ab"],"",0,3)
"---
echo match(["ab","cd","ab"],"2",0)
"---
echo match(["ab","cd","ab"],"2",1)
"---
echo match(["ab","cd","ab"],"2",0,3)
"---
echo match([],"a",0,3)
"---
echo match([],"[0-9]")
"---
echo match([],"[0-9]",1)
"---
echo match([],"[0-9]",-1,1)
"---
echo match([],"x",-1)
"---
echo match([],".")
"---
echo match([],".",0)
"---
echo match([],".",1)
"---
echo match([],".",0,2)
"---
echo match([],".",-1,1)
"---
echo match([],"")
"---
echo match([],"",1)
"---
echo match([],"",-1,1)
"---
echo match([],"2",0)
"---
echo match([],"2",1)
"---
echo match([],"2",0,3)
"---
echo match([1,2,3],"a",0,3)
"---
echo match([1,2,3],"[0-9]",-4)
"---
echo match([1,2,3],"[0-9]",0,3)
"---
echo match([1,2,3],"x",-1,1)
"---
echo match([1,2,3],".")
"---
echo match([1,2,3],".",1)
"---
echo match([1,2,3],".",-1,1)
"---
echo match([1,2,3],"",1,2)
"---
echo match([1,2,3],"",2,2)
"---
echo match([1,2,3],"",-1,1)
"---
echo match([1,2,3],"2")
"---
echo match([1,2,3],"2",1)
"---
echo match(["x",12,"x2"],"a",-4)
"---
echo match(["x",12,"x2"],"[0-9]",1,2)
"---
echo match(["x",12,"x2"],"[0-9]",0,2)
"---
echo match(["x",12,"x2"],"[0-9]",2,2)
"---
echo match(["x",12,"x2"],"x",-1)
"---
echo match(["x",12,"x2"],"x",-4)
"---
echo match(["x",12,"x2"],"",1,2)
"---
echo match(["x",12,"x2"],"",0,2)
"---
echo match(["x",12,"x2"],"",2,2)
"---
echo match(["x",12,"x2"],"2",1,2)
"---
echo match(["x",12,"x2"],"2",0,2)
"---
echo match(["x",12,"x2"],"2",2,2)
"---
echo match([[1],"a"],"a",1,2)
"---
echo match([[1],"a"],"a",0,2)
"---
echo match([[1],"a"],"a",2,2)
"---
echo match([[1],"a"],"[0-9]",0)
"---
echo match([[1],"a"],"[0-9]",-4)
"---
echo match([[1],"a"],"[0-9]",0,2)
"---
echo match([[1],"a"],"[0-9]",0,3)
"---
echo match([[1],"a"],"x",0)
"---
echo match([[1],"a"],"x",5)
"---
echo match([[1],"a"],".",0)
"---
echo match([[1],"a"],".",-1)
"---
echo match([[1],"a"],".",-4)
"---
echo match([[1],"a"],".",0,3)
"---
echo match([[1],"a"],"",0)
"---
echo match([[1],"a"],"",-4)
"---
echo match([[1],"a"],"2",-1)
"---
echo match([[1],"a"],"2",-4)
"---
echo match([[1],"a"],"2",0,3)
"---
echo match([0.5,"a"],"a")
"---
echo match([0.5,"a"],"a",-1,1)
"---
echo match([0.5,"a"],"[0-9]")
"---
echo match([0.5,"a"],"[0-9]",1)
"---
echo match([0.5,"a"],"[0-9]",-1,1)
"---
echo match([0.5,"a"],"x",-1)
"---
echo match([0.5,"a"],"x",-4)
"---
echo match([0.5,"a"],".")
"---
echo match([0.5,"a"],".",1)
"---
echo match([0.5,"a"],"",0)
"---
echo match([0.5,"a"],"",-1)
"---
echo match([0.5,"a"],"",-4)
"---
echo match([0.5,"a"],"",0,3)
"---
echo match([0.5,"a"],"2",0)
"---
echo match([0.5,"a"],"2",1)
"---
echo match([0.5,"a"],"2",5)
"---
echo match([0.5,"a"],"2",0,3)
"---
echo match(["a",{},"b"],"a",1,2)
"---
echo match(["a",{},"b"],"a",0,2)
"---
echo match(["a",{},"b"],"a",2,2)
"---
echo match(["a",{},"b"],"[0-9]",1,2)
"---
echo match(["a",{},"b"],"[0-9]",2,2)
"---
echo match(["a",{},"b"],"x",1,2)
"---
echo match(["a",{},"b"],"x",0,2)
"---
echo match(["a",{},"b"],"x",2,2)
"---
echo match(["a",{},"b"],".",0)
"---
echo match(["a",{},"b"],".",-4)
"---
echo match(["a",{},"b"],".",0,3)
"---
echo match(["a",{},"b"],"",0)
"---
echo match(["a",{},"b"],"",-4)
"---
echo match(["a",{},"b"],"2")
"---
echo match(["a",{},"b"],"2",1)
"---
echo match(["a",{},"b"],"2",-1,1)
"---
echo matchend(["ab","cd","ab"],"[0-9]",1)
"---
echo matchend(["ab","cd","ab"],"x",0)
"---
echo matchend(["ab","cd","ab"],"x",-4)
"---
echo matchend(["ab","cd","ab"],"x",0,2)
"---
echo matchend(["ab","cd","ab"],".")
"---
echo matchend(["ab","cd","ab"],".",1)
"---
echo matchend(["ab","cd","ab"],".",-1,1)
"---
echo matchend(["ab","cd","ab"],"",1)
"---
echo matchend(["ab","cd","ab"],"",5)
"---
echo matchend(["ab","cd","ab"],"2",1)
"---
echo matchend([],"a")
"---
echo matchend([],"a",0,2)
"---
echo matchend([],"[0-9]",1)
"---
echo matchend([],"[0-9]",5)
"---
echo matchend([],"x")
"---
echo matchend([],"x",0)
"---
echo matchend([],"x",1)
"---
echo matchend([],"x",0,2)
"---
echo matchend([],".",0)
"---
echo matchend([],".",5)
"---
echo matchend([],".",0,3)
"---
echo matchend([],"",1)
"---
echo matchend([],"2",-4)
"---
echo matchend([],"2",0,3)
"---
echo matchend([1,2,3],"a")
"---
echo matchend([1,2,3],"a",-1,1)
"---
echo matchend([1,2,3],"[0-9]",0,2)
"---
echo matchend([1,2,3],"x")
"---
echo matchend([1,2,3],"x",1)
"---
echo matchend([1,2,3],"x",-1,1)
"---
echo matchend([1,2,3],".",1)
"---
echo matchend([1,2,3],".",-1)
"---
echo matchend([1,2,3],".",5)
"---
echo matchend([1,2,3],"",1)
"---
echo matchend([1,2,3],"2",0,2)
"---
echo matchend(["x",12,"x2"],"a",-1)
"---
echo matchend(["x",12,"x2"],"a",5)
"---
echo matchend(["x",12,"x2"],"a",1,2)
"---
echo matchend(["x",12,"x2"],"[0-9]",1,2)
"---
echo matchend(["x",12,"x2"],"[0-9]",0,2)
"---
echo matchend(["x",12,"x2"],"[0-9]",2,2)
"---
echo matchend(["x",12,"x2"],"x")
"---
echo matchend(["x",12,"x2"],"x",1)
"---
echo matchend(["x",12,"x2"],"x",0,2)
"---
echo matchend(["x",12,"x2"],"x",-1,1)
"---
echo matchend(["x",12,"x2"],".",0)
"---
echo matchend(["x",12,"x2"],".",1)
"---
echo matchend(["x",12,"x2"],".",5)
"---
echo matchend(["x",12,"x2"],".",0,3)
"---
echo matchend(["x",12,"x2"],"",-4)
"---
echo matchend(["x",12,"x2"],"",0,3)
"---
echo matchend([[1],"a"],"a",1)
"---
echo matchend([[1],"a"],"[0-9]",-4)
"---
echo matchend([[1],"a"],"[0-9]",0,3)
"---
echo matchend([[1],"a"],"x",-1,1)
"---
echo matchend([[1],"a"],".")
"---
echo matchend([[1],"a"],".",1)
"---
echo matchend([[1],"a"],".",-1,1)
"---
echo matchend([[1],"a"],"",-1,1)
"---
echo matchend([[1],"a"],"2",1,2)
"---
echo matchend([[1],"a"],"2",0,2)
"---
echo matchend([[1],"a"],"2",2,2)
"---
echo matchend([0.5,"a"],"a")
"---
echo matchend([0.5,"a"],"a",1)
"---
echo matchend([0.5,"a"],"a",0,2)
"---
echo matchend([0.5,"a"],"a",-1,1)
"---
echo matchend([0.5,"a"],"[0-9]",1)
"---
echo matchend([0.5,"a"],"[0-9]",-1)
"---
echo matchend([0.5,"a"],"[0-9]",5)
"---
echo matchend([0.5,"a"],"x",-1)
"---
echo matchend([0.5,"a"],"x",5)
"---
echo matchend([0.5,"a"],"x",1,2)
"---
echo matchend([0.5,"a"],".",5)
"---
echo matchend([0.5,"a"],".",0,3)
"---
echo matchend([0.5,"a"],"",-1)
"---
echo matchend([0.5,"a"],"",5)
"---
echo matchend([0.5,"a"],"2",0,3)
"---
echo matchend(["a",{},"b"],"a")
"---
echo matchend(["a",{},"b"],"a",1,2)
"---
echo matchend(["a",{},"b"],"a",0,2)
"---
echo matchend(["a",{},"b"],"[0-9]",-1,1)
"---
echo matchend(["a",{},"b"],"x")
"---
echo matchend(["a",{},"b"],"x",0,2)
"---
echo matchend(["a",{},"b"],".",0)
"---
echo matchend(["a",{},"b"],".",1)
"---
echo matchend(["a",{},"b"],".",-4)
"---
echo matchend(["a",{},"b"],".",0,3)
"---
echo matchend(["a",{},"b"],"",0)
"---
echo matchend(["a",{},"b"],"",-4)
"---
echo matchend(["a",{},"b"],"",0,3)
"---
echo matchend(["a",{},"b"],"2",-1,1)
"---
echo matchstr(["ab","cd","ab"],"a",-1)
"---
echo matchstr(["ab","cd","ab"],"a",-4)
"---
echo matchstr(["ab","cd","ab"],"[0-9]",-1,1)
"---
echo matchstr(["ab","cd","ab"],"x",-1,1)
"---
echo matchstr(["ab","cd","ab"],".")
"---
echo matchstr(["ab","cd","ab"],".",0,2)
"---
echo matchstr(["ab","cd","ab"],"",-1,1)
"---
echo matchstr(["ab","cd","ab"],"2")
"---
echo matchstr(["ab","cd","ab"],"2",0,2)
"---
echo matchstr([],"a",0,3)
"---
echo matchstr([],"[0-9]",1,2)
"---
echo matchstr([],"[0-9]",0,2)
"---
echo matchstr([],"[0-9]",2,2)
"---
echo matchstr([],"x",-1,1)
"---
echo matchstr([],".")
"---
echo matchstr([],".",1)
"---
echo matchstr([],".",-1,1)
"---
echo matchstr([],"",1)
"---
echo matchstr([],"",5)
"---
echo matchstr([],"2",1,2)
"---
echo matchstr([],"2",0,2)
"---
echo matchstr([],"2",2,2)
"---
echo matchstr([1,2,3],"a",0)
"---
echo matchstr([1,2,3],"a",-4)
"---
echo matchstr([1,2,3],"a",0,3)
"---
echo matchstr([1,2,3],"[0-9]",-1)
"---
echo matchstr([1,2,3],"[0-9]",-4)
"---
echo matchstr([1,2,3],"x",0,3)
"---
echo matchstr([1,2,3],".")
"---
echo matchstr([1,2,3],".",-1,1)
"---
echo matchstr([1,2,3],"")
"---
echo matchstr([1,2,3],"",1)
"---
echo matchstr([1,2,3],"",0,2)
"---
echo matchstr([1,2,3],"",-1,1)
"---
echo matchstr(["x",12,"x2"],"a",-1)
"---
echo matchstr(["x",12,"x2"],"a",5)
"---
echo matchstr(["x",12,"x2"],"[0-9]",1,2)
"---
echo matchstr(["x",12,"x2"],"[0-9]",2,2)
"---
echo matchstr(["x",12,"x2"],"x",1,2)
"---
echo matchstr(["x",12,"x2"],".",0,2)
"---
echo matchstr(["x",12,"x2"],".",2,2)
"---
echo matchstr(["x",12,"x2"],"",1,2)
"---
echo matchstr(["x",12,"x2"],"",0,2)
"---
echo matchstr(["x",12,"x2"],"",2,2)
"---
echo matchstr(["x",12,"x2"],"2",0,2)
"---
echo matchstr([[1],"a"],"a",1,2)
"---
echo matchstr([[1],"a"],"a",0,2)
"---
echo matchstr([[1],"a"],"a",2,2)
"---
echo matchstr([[1],"a"],"[0-9]",0)
"---
echo matchstr([[1],"a"],"[0-9]",1)
"---
echo matchstr([[1],"a"],"[0-9]",-4)
"---
echo matchstr([[1],"a"],"x",5)
"---
echo matchstr([[1],"a"],".",0)
"---
echo matchstr([[1],"a"],".",-4)
"---
echo matchstr([[1],"a"],".",0,3)
"---
echo matchstr([[1],"a"],"",0)
"---
echo matchstr([[1],"a"],"",-4)
"---
echo matchstr([[1],"a"],"",0,3)
"---
echo matchstr([[1],"a"],"2",-1)
"---
echo matchstr([[1],"a"],"2",-4)
"---
echo matchstr([[1],"a"],"2",0,3)
"---
echo matchstr([0.5,"a"],"a",0,2)
"---
echo matchstr([0.5,"a"],"a",2,2)
"---
echo matchstr([0.5,"a"],"[0-9]")
"---
echo matchstr([0.5,"a"],"[0-9]",0)
"---
echo matchstr([0.5,"a"],"[0-9]",1)
"---
echo matchstr([0.5,"a"],"[0-9]",-4)
"---
echo matchstr([0.5,"a"],".",0)
"---
echo matchstr([0.5,"a"],".",-4)
"---
echo matchstr([0.5,"a"],".",0,3)
"---
echo matchstr([0.5,"a"],"",0)
"---
echo matchstr([0.5,"a"],"",-4)
"---
echo matchstr([0.5,"a"],"2")
"---
echo matchstr([0.5,"a"],"2",0)
"---
echo matchstr([0.5,"a"],"2",1)
"---
echo matchstr([0.5,"a"],"2",-4)
"---
echo matchstr(["a",{},"b"],"a",1,2)
"---
echo matchstr(["a",{},"b"],"a",0,2)
"---
echo matchstr(["a",{},"b"],"a",2,2)
"---
echo matchstr(["a",{},"b"],"[0-9]",1,2)
"---
echo matchstr(["a",{},"b"],"[0-9]",2,2)
"---
echo matchstr(["a",{},"b"],"x",0,2)
"---
echo matchstr(["a",{},"b"],".",0)
"---
echo matchstr(["a",{},"b"],".",-4)
"---
echo matchstr(["a",{},"b"],".",0,3)
"---
echo matchstr(["a",{},"b"],"")
"---
echo matchstr(["a",{},"b"],"",0)
"---
echo matchstr(["a",{},"b"],"",-4)
"---
echo matchstr(["a",{},"b"],"",0,2)
"---
echo matchstr(["a",{},"b"],"",0,3)
"---
echo matchstr(["a",{},"b"],"2",0)
"---
echo matchstr(["a",{},"b"],"2",-1)
"---
echo matchstr(["a",{},"b"],"2",-4)
"---
echo matchstr(["a",{},"b"],"2",0,3)
"---
echo matchlist(["ab","cd","ab"],"a",0,2)
"---
echo matchlist(["ab","cd","ab"],"[0-9]",-1)
"---
echo matchlist(["ab","cd","ab"],"[0-9]",5)
"---
echo matchlist(["ab","cd","ab"],"x",0)
"---
echo matchlist(["ab","cd","ab"],"x",-4)
"---
echo matchlist(["ab","cd","ab"],"x",0,3)
"---
echo matchlist(["ab","cd","ab"],".",1,2)
"---
echo matchlist(["ab","cd","ab"],".",0,2)
"---
echo matchlist(["ab","cd","ab"],".",2,2)
"---
echo matchlist(["ab","cd","ab"],"",0,2)
"---
echo matchlist(["ab","cd","ab"],"2",0,2)
"---
echo matchlist(["ab","cd","ab"],"2",0,3)
"---
echo matchlist([],"a",-1)
"---
echo matchlist([],"a",5)
"---
echo matchlist([],"[0-9]",5)
"---
echo matchlist([],".",1,2)
"---
echo matchlist([],".",0,2)
"---
echo matchlist([],".",2,2)
"---
echo matchlist([],"",0,2)
"---
echo matchlist([],"2",0,3)
"---
echo matchlist([1,2,3],"a")
"---
echo matchlist([1,2,3],"a",1)
"---
echo matchlist([1,2,3],"a",-1)
"---
echo matchlist([1,2,3],"[0-9]")
"---
echo matchlist([1,2,3],"[0-9]",0)
"---
echo matchlist([1,2,3],"[0-9]",1)
"---
echo matchlist([1,2,3],"[0-9]",0,2)
"---
echo matchlist([1,2,3],"[0-9]",-1,1)
"---
echo matchlist([1,2,3],"x",1)
"---
echo matchlist([1,2,3],"x",-1)
"---
echo matchlist([1,2,3],"x",5)
"---
echo matchlist([1,2,3],"",-1)
"---
echo matchlist([1,2,3],"",5)
"---
echo matchlist([1,2,3],"2",0)
"---
echo matchlist([1,2,3],"2",-4)
"---
echo matchlist([1,2,3],"2",0,3)
"---
echo matchlist(["x",12,"x2"],"a")
"---
echo matchlist(["x",12,"x2"],"a",-1,1)
"---
echo matchlist(["x",12,"x2"],"[0-9]",0,2)
"---
echo matchlist(["x",12,"x2"],"[0-9]",-1,1)
"---
echo matchlist(["x",12,"x2"],"x")
"---
echo matchlist(["x",12,"x2"],"x",1)
"---
echo matchlist(["x",12,"x2"],"x",-1,1)
"---
echo matchlist(["x",12,"x2"],".",1)
"---
echo matchlist(["x",12,"x2"],".",-1)
"---
echo matchlist(["x",12,"x2"],".",5)
"---
echo matchlist(["x",12,"x2"],"",-1)
"---
echo matchlist(["x",12,"x2"],"",5)
"---
echo matchlist(["x",12,"x2"],"2",0)
"---
echo matchlist(["x",12,"x2"],"2",0,2)
"---
echo matchlist([[1],"a"],"a",0,3)
"---
echo matchlist([[1],"a"],"[0-9]",-4)
"---
echo matchlist([[1],"a"],"[0-9]",0,3)
"---
echo matchlist([[1],"a"],"x",-1)
"---
echo matchlist([[1],"a"],"x",5)
"---
echo matchlist([[1],"a"],"",1,2)
"---
echo matchlist([[1],"a"],"",0,2)
"---
echo matchlist([[1],"a"],"",2,2)
"---
echo matchlist([[1],"a"],"2",0)
"---
echo matchlist([[1],"a"],"2",-4)
"---
echo matchlist([[1],"a"],"2",0,3)
"---
echo matchlist([0.5,"a"],"a",1)
"---
echo matchlist([0.5,"a"],"a",-1)
"---
echo matchlist([0.5,"a"],"a",5)
"---
echo matchlist([0.5,"a"],"[0-9]")
"---
echo matchlist([0.5,"a"],"[0-9]",0)
"---
echo matchlist([0.5,"a"],"[0-9]",1)
"---
echo matchlist([0.5,"a"],"x",-1)
"---
echo matchlist([0.5,"a"],"x",5)
"---
echo matchlist([0.5,"a"],".",1,2)
"---
echo matchlist([0.5,"a"],".",2,2)
"---
echo matchlist([0.5,"a"],"",-1)
"---
echo matchlist([0.5,"a"],"",5)
"---
echo matchlist([0.5,"a"],"",1,2)
"---
echo matchlist([0.5,"a"],"",2,2)
"---
echo matchlist([0.5,"a"],"2",0)
"---
echo matchlist([0.5,"a"],"2",-4)
"---
echo matchlist([0.5,"a"],"2",0,3)
"---
echo matchlist(["a",{},"b"],"a",0)
"---
echo matchlist(["a",{},"b"],"a",-1)
"---
echo matchlist(["a",{},"b"],"a",-4)
"---
echo matchlist(["a",{},"b"],"[0-9]",0)
"---
echo matchlist(["a",{},"b"],"[0-9]",-4)
"---
echo matchlist(["a",{},"b"],"[0-9]",0,3)
"---
echo matchlist(["a",{},"b"],"x",-1)
"---
echo matchlist(["a",{},"b"],"x",5)
"---
echo matchlist(["a",{},"b"],"",1,2)
"---
echo matchlist(["a",{},"b"],"",0,2)
"---
echo matchlist(["a",{},"b"],"",2,2)
"---
echo matchlist(["a",{},"b"],"2",0)
"---
echo matchlist(["a",{},"b"],"2",-4)
"---
echo matchlist(["a",{},"b"],"2",0,3)
"---
echo matchstrpos(["ab","cd","ab"],"a",0)
"---
echo matchstrpos(["ab","cd","ab"],"a",-1)
"---
echo matchstrpos(["ab","cd","ab"],"a",-4)
"---
echo matchstrpos(["ab","cd","ab"],"a",0,2)
"---
echo matchstrpos(["ab","cd","ab"],"[0-9]",0)
"---
echo matchstrpos(["ab","cd","ab"],"[0-9]",-4)
"---
echo matchstrpos(["ab","cd","ab"],"[0-9]",0,3)
"---
echo matchstrpos(["ab","cd","ab"],"x",1,2)
"---
echo matchstrpos(["ab","cd","ab"],".",-4)
"---
echo matchstrpos(["ab","cd","ab"],".",0,3)
"---
echo matchstrpos(["ab","cd","ab"],"",-4)
"---
echo matchstrpos(["ab","cd","ab"],"",0,3)
"---
echo matchstrpos([],"a",-1)
"---
echo matchstrpos([],"a",5)
"---
echo matchstrpos([],"[0-9]",1)
"---
echo matchstrpos([],"[0-9]",5)
"---
echo matchstrpos([],"x",-1)
"---
echo matchstrpos([],"x",5)
"---
echo matchstrpos([],"x",1,2)
"---
echo matchstrpos([],"x",2,2)
"---
echo matchstrpos([],".",1,2)
"---
echo matchstrpos([],".",0,2)
"---
echo matchstrpos([],".",2,2)
"---
echo matchstrpos([],"",1,2)
"---
echo matchstrpos([],"",2,2)
"---
echo matchstrpos([],"2",0,2)
"---
echo matchstrpos([1,2,3],"a",0,2)
"---
echo matchstrpos([1,2,3],"[0-9]",1)
"---
echo matchstrpos([1,2,3],"[0-9]",-1)
"---
echo matchstrpos([1,2,3],"[0-9]",5)
"---
echo matchstrpos([1,2,3],"x",0)
"---
echo matchstrpos([1,2,3],"x",0,2)
"---
echo matchstrpos([1,2,3],".",-4)
"---
echo matchstrpos([1,2,3],".",0,3)
"---
echo matchstrpos([1,2,3],"",0,3)
"---
echo matchstrpos([1,2,3],"2",1)
"---
echo matchstrpos([1,2,3],"2",-1)
"---
echo matchstrpos([1,2,3],"2",5)
"---
echo matchstrpos(["x",12,"x2"],"a")
"---
echo matchstrpos(["x",12,"x2"],"a",1)
"---
echo matchstrpos(["x",12,"x2"],"a",-1,1)
"---
echo matchstrpos(["x",12,"x2"],"[0-9]")
"---
echo matchstrpos(["x",12,"x2"],"[0-9]",0,2)
"---
echo matchstrpos(["x",12,"x2"],"x")
"---
echo matchstrpos(["x",12,"x2"],"x",1)
"---
echo matchstrpos(["x",12,"x2"],"x",-1,1)
"---
echo matchstrpos(["x",12,"x2"],".",5)
"---
echo matchstrpos(["x",12,"x2"],"",1)
"---
echo matchstrpos(["x",12,"x2"],"",-1)
"---
echo matchstrpos(["x",12,"x2"],"",5)
"---
echo matchstrpos(["x",12,"x2"],"2",5)
"---
echo matchstrpos([[1],"a"],"a",-1)
"---
echo matchstrpos([[1],"a"],"a",5)
"---
echo matchstrpos([[1],"a"],"[0-9]",0)
"---
echo matchstrpos([[1],"a"],"[0-9]",1)
"---
echo matchstrpos([[1],"a"],"[0-9]",5)
"---
echo matchstrpos([[1],"a"],"[0-9]",0,3)
"---
echo matchstrpos([[1],"a"],"x",-1)
"---
echo matchstrpos([[1],"a"],"x",5)
"---
echo matchstrpos([[1],"a"],".",1,2)
"---
echo matchstrpos([[1],"a"],".",0,2)
"---
echo matchstrpos([[1],"a"],".",2,2)
"---
echo matchstrpos([[1],"a"],"",1,2)
"---
echo matchstrpos([[1],"a"],"",2,2)
"---
echo matchstrpos([[1],"a"],"2",1,2)
"---
echo matchstrpos([[1],"a"],"2",2,2)
"---
echo matchstrpos([0.5,"a"],"a",1,2)
"---
echo matchstrpos([0.5,"a"],"[0-9]")
"---
echo matchstrpos([0.5,"a"],"[0-9]",0,2)
"---
echo matchstrpos([0.5,"a"],"x",1,2)
"---
echo matchstrpos([0.5,"a"],"x",2,2)
"---
echo matchstrpos([0.5,"a"],".",0,2)
"---
echo matchstrpos([0.5,"a"],"")
"---
echo matchstrpos([0.5,"a"],"",0,2)
"---
echo matchstrpos([0.5,"a"],"2")
"---
echo matchstrpos([0.5,"a"],"2",0,2)
"---
echo matchstrpos(["a",{},"b"],"a",1)
"---
echo matchstrpos(["a",{},"b"],"a",-1)
"---
echo matchstrpos(["a",{},"b"],"a",5)
"---
echo matchstrpos(["a",{},"b"],"[0-9]")
"---
echo matchstrpos(["a",{},"b"],"[0-9]",0)
"---
echo matchstrpos(["a",{},"b"],"[0-9]",1)
"---
echo matchstrpos(["a",{},"b"],"[0-9]",5)
"---
echo matchstrpos(["a",{},"b"],"[0-9]",0,3)
"---
echo matchstrpos(["a",{},"b"],"x",-1)
"---
echo matchstrpos(["a",{},"b"],"x",5)
"---
echo matchstrpos(["a",{},"b"],".",1,2)
"---
echo matchstrpos(["a",{},"b"],".",2,2)
"---
echo matchstrpos(["a",{},"b"],"",1,2)
"---
echo matchstrpos(["a",{},"b"],"",2,2)
"---
echo matchstrpos(["a",{},"b"],"2",-4)
"---
echo matchstrpos(["a",{},"b"],"2",0,3)
"---
echo match()
"---
echo match("a")
"---
echo match("a","b",1,2,3)
"---
echo matchstr([],[])
"---
echo match({},"a")
"---
echo match("a",{})
"---
echo matchstrpos(v:null,"a")
"---
echo match(v:null,"a")
"---
echo match("abc","b","x")
"---
echo match("abc","b",1,"x")
"---
echo match(123,2)
"---
echo match(1.5,5)
"---
echo matchend("abc","")
"---
echo matchend("",""),match("","")
"---
set ic
echo match("ABC","b") matchstr("ABC","b") matchend("abc","B")
"---
set ic scs
echo match("ABC","b")
