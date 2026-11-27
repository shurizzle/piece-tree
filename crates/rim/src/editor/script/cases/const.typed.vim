const x =<< END
\abc
\  def
\END
echo x islocked('x')
"---
const x =<< END
\abc
\END
call add(x, 'b')
"---
const x =<< END
\abc
\END
let x = 1
"---
const x =<< trim END
\    a
\     b
\    END
echo x
"---
let v = 3
const x =<< eval END
\{v}
\END
echo x
"---
const [a, b] =<< END
\1
\2
\END
echo a b
"---
const [a, b] =<< END
\1
\2
\END
let a = 5
"---
const x =<< END
\a
\END
const x =<< END
\b
\END
echo x
"---
let x = 1
const x =<< END
\a
\END
echo x
"---
const $X =<< END
\a
\END
echo 1
"---
const l = [1]
let l = 2
"---
const l = [1]
call add(l, 2)
"---
const x = 1
let x = 2
"---
const x = 1
const x = 2
"---
const [a, b] = [1, 2]
echo a b
"---
const $X = 1
"---
const &tw = 1
"---
const @a = 1
"---
let l = [1]
const l[0] = 1
