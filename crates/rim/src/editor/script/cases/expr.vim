echo 1 + 2 * 3
"---
echo 10 / 3
echo -7 / 2
echo 7 / 0
echo -7 / 0
echo 0 / 0
echo 5 % 0
echo 7 % 3
echo -7 % 3
"---
echo 1.5 + 1
echo 10 / 4.0
echo 1.0 / 3
echo 2.0 * 3
echo 1.0e3
echo 1.5e10
echo 1.0e-5
echo 100000.0
echo 1000000.0
echo 123456789.0
echo 0.1 + 0.2
echo -0.0
echo 1.0 / 0
echo -1.0 / 0
echo 0.0 / 0
"---
echo 1.5 % 2
"---
echo 'a' . 'b'
echo 'a' . 1
echo 'a' .. 'b'
echo 'it''s'
echo "a\tb"
echo "\x41\u20ac\101"
"---
echo "12abc" + 1
echo 'abc' + 1
echo '0x1f' + 0
echo '-5' + 0
echo '1e3' + 0
echo ' 5' + 0
echo '0b11' + 0
echo '010' + 0
"---
echo 'abc'[1]
echo 'abcdef'[2:3]
echo 'abc'[1:]
echo 'abc'[:1]
echo 'abc'[9]
echo 'abc'[-1]
echo 'abc'[-2:]
echo 'héllo'[1:2]
"---
echo 1 == 1
echo 'a' ==# 'A'
echo 'a' ==? 'A'
echo 'abc' =~ 'b'
echo 'abc' !~ 'x'
echo 2 > 1
echo 'b' > 'a'
echo 1 <= 1
echo 1 != 1
echo '10' < 9
echo 1.5 > 1
echo 'a' == 0
echo '1' == 1
echo 1 == 1.0
"---
echo 1 && 0
echo 0 || 2
echo !0
echo !5
echo -(3)
echo 1 ? 'y' : 'n'
echo 0 ? 1 : 0 ? 2 : 3
echo 'a' || 1
echo 2 && 3
"---
echo 0 ?? 5
echo 3 ?? 5
echo '' ?? 'x'
echo 'a' ?? 'x'
"---
echo [1, 2, 3]
echo [1, 2] + [3]
echo [1, 2, 3][1]
echo [1, 2, 3][-1]
echo [1, 2, 3][1:]
echo [1, 2, 3][:1]
echo [1, 2, 3][2:1]
echo []
echo [1, 2, 3][-4:]
echo [1, 2, 3][1:-2]
"---
echo [1, 2, 3][5]
"---
echo 1 +
"---
echo (1
"---
echo 1 2
"---
echo 'abc
"---
echo "abc
"---
echo [1
"---
echo [1,
"---
echo {'a' 1}
"---
echo {'a': 1
"---
echo 1 ? 2
"---
echo [1][0
"---
echo len(1
"---
echo foo(1)
"---
echo abs()
"---
echo abs(1, 2)
"---
echo [1] + 1
"---
echo 'a' . [1]
"---
echo &nosuch
"---
echo [1] < 2
"---
echo [1] < [2]
"---
echo v:true
echo v:false
echo v:null
echo v:none
"---
echo string(v:true)
echo string(v:null)
echo v:true + 1
echo v:null + 1
"---
echo 1 is 1
echo 1 is '1'
echo 'a' is 'a'
echo [1] is [1]
echo 'a' isnot# 'A'
"---
let d = {'a': 1, 'b': 2}
echo d.a
echo d['b']
echo d.zz
"---
echo #{x: 1, y-z: 'q', 3: 4}
"---
echo {} < {}
"---
echo {} == 1
"---
echo {} + 1
"---
echo {} . 'a'
"---
echo len("\<lt>") len("\<LT>") len("\<cR>") len("\<Foo>") len("\<c-h>") len("\<S-a>") len("\<Char-65>") len("\<C-]>")
"---
echo "\<Tab>" == "\t" "\<CR>" == "\r" "\<Esc>" == "\e" "\<Space>" == " " "\<NL>" == "\n" "\<Enter>" == "\r"
"---
echo "\<C-H>" == "\x08" "\<S-a>" "\<Char-0x41>" "\<C-]>" == "\x1d" "\<C-?>" == "\x7f" "\<C-\>" == "\x1c" "\<Bar>" "\<Bslash>"
"---
echo "a\<Foo>b" "\<" "\<>" "\<C->" "x\<lt>y" "\<Char-065>" "\<char-0x42>"
"---
echo "\<Char-x>" "after"
"---
echo "\<C-A>" == "\x01" "\<C-a>" == "\x01" "\<c-Z>" == "\x1a" "\<C-[>" == "\e" "\<C-^>" == "\x1e" "\<C-_>" == "\x1f"
"---
echo 'a' == 1.5
"---
echo 1.5 == 'a'
"---
echo 1.5 < '2'
"---
echo [1] == 1.5
"---
echo {} != 1.5
"---
echo v:true == 1.5
"---
echo v:null == 1.5
"---
echo 1 == 1.0 2 < 2.5 1.5 >= 1
"---
echo 'a' =~ 1.5
"---
echo 1.5 !~ '5'
"---
echo 1.5 is 1.5
"---
echo 'a'.'b' * 2
"---
let b = 3 | echo 'a'.b * 2
"---
echo 1 . 2 + 3
"---
echo 'a'.'b'.'c'
"---
echo 1 . 2 * 3
"---
let b = 3 | echo 'a'.b.'c' * 2
