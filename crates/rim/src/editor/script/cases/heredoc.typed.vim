let x =<< END
\abc
\  def
\END
echo x
"---
let x =<< trim END
\    a
\     b
\    END
echo x
"---
let x =<< eval END
\{1 + 2}
\{{x}}
\END
echo x
"---
let x =<< END
\END
echo x
"---
let x =<< END
\one
\END
let y =<< END
\two
\END
echo x y
"---
let [a, b] =<< END
\1
\2
\END
echo a b
"---
let l = [0]
let l[0] =<< END
\q
\END
echo l
"---
let x =<<
echo 'next line is a command'
"---
let x =<< end
echo 'next'
"---
let x =<< END junk
echo 'next'
"---
let x =<< END
\no end
echo 'this is heredoc text'
\END
echo x
"---
echo 'before' | let x =<< END
\t
\END
echo x
"---
let x =<< END | echo 'no'
\t
\END
echo x
"---
execute "let x =<< END\nl1\nEND"
echo x
"---
execute 'let x =<< END'
\typed line
\END
echo x
"---
let x =<< END
\\ starts with backslash
\END
echo x
"---
let x =<< END
\
\END
echo x
"---
let x =<< END
\a\
\END
echo x
