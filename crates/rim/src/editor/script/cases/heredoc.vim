let x =<< END
abc
  def

END
echo x
"---
let x =<< END
END
echo x
"---
let x =<< END
END | echo 1
echo x
"---
let x =<< trim END
    abc
      def
    ghi
    END
echo x
"---
  let x =<< trim END
    abc
      def
  END
echo x
"---
  let x =<< trim END
	abc
		def
  END
echo x
"---
let x =<< trim END
  abc
 def
END
echo x
"---
let x =<< trim trim END
  abc
END
echo x
"---
let x =<< END " comment
abc
END
echo x
"---
let x =<<END
abc
END
echo x
"---
let x =<<
qqq
END
echo x
"---
let x =<< "c
qqq
END
echo x
"---
let x =<< end
qqq
end
echo x
"---
let x =<< END junk
qqq
END
echo x
"---
let x =<< END junk
qqq
END
echo exists('x')
"---
let x =<< END
abc
echo 'after'
"---
let x =<< END
abc
END  
echo x
"---
let x =<< END
abc
 END
END
echo x
"---
let x =<< END
\ abc
\def
END
echo x
"---
let x =<< END
"\ comment
END
echo x
"---
let x =<< END
abc
END
let y =<< END
def
END
echo x y
"---
let [a, b] =<< END
1
2
END
echo a b
"---
let [a, b] =<< END
1
END
echo 'x'
"---
let [a; b] =<< END
1
2
3
END
echo a b
"---
let l = [1, 2] | let l[0] =<< END
q
END
echo l
"---
let d = {} | let d.k =<< END
q
END
echo d
"---
let g:z =<< END
q
END
echo g:z
"---
let &tabstop =<< END
3
END
"---
let @a =<< END
l1
l2
END
echo @a
"---
let $EDGE_HD =<< END
l1
END
echo $EDGE_HD
"---
let x += 1
let x =<< END
END
let x ..=<< END
END
"---
let x =<< eval END
plain {1 + 2} and {{braces}}
END
echo x
"---
let x =<< eval trim END
  {1 + 2}
  {'a' . 'b'}
  END
echo x
"---
let x =<< trim eval END
  {[1, 2]}
  {{'a': 1}}
END
echo x
"---
let x =<< eval END
stray }
END
echo exists('x')
"---
let x =<< eval END
open { here
END
echo exists('x')
"---
let x =<< eval END
{
END
echo exists('x')
"---
let x =<< eval END
{1 +}
END
echo exists('x')
"---
let x =<< eval END
{nosuchvar}
END
echo exists('x')
"---
let x =<< eval END
{ 1 2 }
END
echo exists('x')
"---
let x =<< eval END
ok {1}
{nosuch}
later {2}
END
echo exists('x')
"---
let x =<< eval END
{v:true} {v:null} {1.5} {-0.0}
END
echo x
"---
let x =<< END
{1 + 2}
END
echo x
"---
let i = 0
while i < 3
  let x =<< END
line {i}
END
  echo x
  let i += 1
endwhile
"---
let i = 0
while i < 3
  let x =<< eval END
line {i}
END
  echo x
  let i += 1
endwhile
"---
for i in [1, 2]
  let x =<< trim END
    a
     b
  END
  echo x
endfor
"---
let i = 0
while i < 2
  let i += 1
  let x =<< END
unterminated
  echo 'in'
endwhile
echo 'out'
"---
if 0
  let x =<< END
  echo 'in heredoc'
END
endif
echo exists('x')
"---
if 0
  let x =<< eval END
  {nosuch}
END
endif
echo 'ok'
"---
if 0
  let x =<< END
abc
endif
echo 'unterminated'
"---
if 1
  let x =<< END
abc
END
endif
echo x
"---
execute "let x =<< END\nl1\nl2\nEND"
echo x
"---
execute "let x =<< END\nl1\nl2\nEND | echo 1"
echo x
"---
execute "let x =<< END\nl1\nl2\nEND\necho 'next'"
echo x
"---
execute "let x =<< END\nl1"
"---
execute "let x =<< trim END\n  l1\n  l2\n  END"
echo x
"---
execute "let x =<< eval END\n{1}\nEND"
echo x
"---
execute 'let x =<< END'
from file
END
echo x
"---
execute 'let x =<< END'
echo 'before'
"---
execute 'let x =<< END' | echo 'same line'
abc
END
echo x
"---
let i = 0
while i < 2
  execute 'let x =<< END'
file line
END
  echo x
  let i += 1
endwhile
"---
let i = 0
while i < 2
  execute "let x =<< END\nstring line\nEND"
  echo x
  let i += 1
endwhile
"---
let l = []
for i in range(3)
  let x =<< END
l
END
  call add(l, x)
  if i == 1 | break | endif
endfor
echo l
"---
let x =<< END
	abc

END
echo x
"---
let x =<< END
abc
END
echo x
"---
let x =<< END
END
echo type(x) len(x)
"---
let x =<< ABC DEF
END
"---
let x =<<   END   
abc
END   
echo x
"---
let x =<< END
abc
END
let x =<< END
END
echo x

"---
let x =<< END
abc
END
echo x
"---
let x =<< END
abc
END
echo x
"---
let x =<< END
abc
END
echo string(x)
"---
let x =<< END


END
echo x
"---
let x = 1
echo x
"---
echo 'a'
echo 'b'