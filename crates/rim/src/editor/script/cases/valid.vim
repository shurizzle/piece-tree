execute 'normal! ihello world' | echo getline(1)
"---
execute 'normal! ihello world' | echo getline(2)
"---
execute 'normal! ihello world' | echo getline(0)
"---
execute 'normal! ihello world' | echo getline(-1)
"---
execute 'normal! ihello world' | echo getline(9)
"---
execute 'normal! ihello world' | echo getline(1,2)
"---
execute 'normal! ihello world' | echo getline(2,1)
"---
execute 'normal! ihello world' | echo getline(1,'$')
"---
execute 'normal! ihello world' | echo getline('.')
"---
execute 'normal! ihello world' | echo getline('$')
"---
execute 'normal! ihello world' | echo getline('.', '$')
"---
execute 'normal! ihello world' | echo line('.')
"---
execute 'normal! ihello world' | echo line('$')
"---
execute 'normal! ihello world' | echo line('w0')
"---
execute 'normal! ihello world' | echo line('w$')
"---
execute 'normal! ihello world' | echo line('v')
"---
execute 'normal! ihello world' | echo line("'a")
"---
execute 'normal! ihello world' | echo line('x')
"---
execute 'normal! ihello world' | echo col('.')
"---
execute 'normal! ihello world' | echo col('$')
"---
execute 'normal! ihello world' | echo col([1, 3])
"---
execute 'normal! ihello world' | echo col([1, 99])
"---
execute 'normal! ihello world' | echo col([9, 1])
"---
execute 'normal! ihello world' | echo col([1, 1, 0])
"---
execute 'normal! ihello world' | echo col('x')
"---
execute 'normal! ihello world' | echo col("'<")
"---
execute 'normal! ihello world' | echo line('.', 1)
"---
execute 'normal! ihello world' | echo line('.', 99)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(1)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(2)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(0)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(-1)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(9)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(1,2)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(2,1)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline(1,'$')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline('.')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline('$')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo getline('.', '$')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('.')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('$')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('w0')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('w$')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('v')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line("'a")
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('x')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col('.')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col('$')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col([1, 3])
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col([1, 99])
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col([9, 1])
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col([1, 1, 0])
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col('x')
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo col("'<")
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('.', 1)
"---
execute 'normal! ihello\<CR>wörld\<CR>third' | echo line('.', 99)
"---
normal! ihello\<CR>b\<Esc>ggma | echo line("'a") col("'a")
"---
echo abs(-3)
"---
echo abs(-3.5)
"---
echo abs('-4x')
"---
echo round(2.5)
"---
echo round(-2.5)
"---
echo round(0.49999999999999994)
"---
echo floor(-0.5)
"---
echo ceil(-0.5)
"---
echo ceil(1e20)
"---
echo float2nr(1e20)
"---
echo float2nr(-1e20)
"---
echo float2nr('3')
"---
echo float2nr(3.9)
"---
echo float2nr(-3.9)
"---
echo sqrt(-1)
"---
echo sqrt(4)
"---
echo pow(2, 10)
"---
echo pow(2, -1)
"---
echo pow(2, 0.5)
"---
echo pow(0, 0)
"---
echo pow(-8, 1.0/3)
"---
echo exp(710)
"---
echo exp(-745)
"---
echo log(0)
"---
echo log(-1)
"---
echo log10(1000)
"---
echo log10(0)
"---
echo sin(1e22)
"---
echo cos(0)
"---
echo tan(1.5707963267948966)
"---
echo atan(1)
"---
echo atan2(1, -1)
"---
echo atan2(0, 0)
"---
echo atan2(-0.0, -1)
"---
echo str2nr('0x1F', 16)
"---
echo str2nr('0b11', 2)
"---
echo str2nr('011', 8)
"---
echo str2nr('  -12abc')
"---
echo str2nr('+5')
"---
echo str2nr('-')
"---
echo str2nr('1\'000', 10, 1)
"---
echo str2nr('z', 36)
"---
echo str2nr('9', 8)
"---
echo str2nr('1', 1)
"---
echo str2nr('1', 37)
"---
echo str2nr('99999999999999999999')
"---
echo str2nr('-99999999999999999999')
"---
echo str2float('1.5e3x')
"---
echo str2float('.5')
"---
echo str2float('1e')
"---
echo str2float('0x10')
"---
echo str2float('  3')
"---
echo str2float('-inf')
"---
echo str2float('infinity')
"---
echo str2float('nan(1)')
"---
echo str2float('1,5')
"---
echo char2nr('é')
"---
echo char2nr('é', 1)
"---
echo char2nr('')
"---
echo char2nr('ab')
"---
echo char2nr('😀')
"---
echo nr2char(233)
"---
echo nr2char(0x1F600)
"---
echo nr2char(0)
"---
echo nr2char(-1)
"---
echo nr2char(65, 1)
"---
echo nr2char(65, 2)
"---
echo toupper('é ß ǆ')
"---
echo tolower('İ É')
"---
echo strlen('é😀')
"---
echo strchars('é😀e\u0301')
"---
echo strchars('e\u0301', 1)
"---
echo strcharlen('e\u0301')
"---
echo strpart('hello', 1, 3)
"---
echo strpart('hello', -2, 4)
"---
echo strpart('hello', 2)
"---
echo strpart('hello', 9)
"---
echo strpart('hello', 1, -1)
"---
echo strpart('héllo', 1, 2, 1)
"---
echo strpart('héllo', 1, 2, 0)
"---
echo stridx('hello', 'l')
"---
echo stridx('hello', 'l', 3)
"---
echo stridx('hello', 'l', -5)
"---
echo stridx('hello', '')
"---
echo stridx('hello', '', 9)
"---
echo stridx('', '')
"---
echo strridx('hello', 'l')
"---
echo strridx('hello', 'l', 2)
"---
echo strridx('hello', '')
"---
echo strridx('hello', '', 2)
"---
echo strridx('hello', 'l', -1)
"---
echo repeat('ab', 3)
"---
echo repeat('ab', 0)
"---
echo repeat('', 5)
"---
echo repeat('é', 2)
"---
echo repeat([1,2], 2)
"---
echo repeat([], 3)
"---
echo repeat(1, 3)
"---
echo repeat(1.5, 2)
"---
echo escape('a.b*c', '.*')
"---
echo escape('a\\b', '\\')
"---
echo escape('é', 'é')
"---
echo escape('abc', '')
"---
echo tr('hello', 'el', 'ip')
"---
echo tr('hello', 'a-z', 'A-Z')
"---
echo tr('héllo', 'é', 'e')
"---
echo tr('abc', 'abc', 'x')
"---
echo tr('', 'a', 'b')
"---
echo trim('  ab  ')
"---
echo trim('  ab  ', ' ', 1)
"---
echo trim('  ab  ', ' ', 2)
"---
echo trim('xxabxx', 'x')
"---
echo trim('xxabxx', 'x', 3)
"---
echo trim('abc', 'abc')
"---
echo trim('', 'a')
"---
echo trim(' é ')
"---
echo trim("\t\n a\r")
"---
echo split('a,b,,c', ',')
"---
echo split('a,b,,c', ',', 1)
"---
echo split(',a,', ',')
"---
echo split(',a,', ',', 1)
"---
echo split('abc', '')
"---
echo split('abc', '', 1)
"---
echo split('', ',')
"---
echo split('', ',', 1)
"---
echo split('a b  c')
"---
echo split(' a b ')
"---
echo split('a1b2c', '\\d')
"---
echo substitute('abc', 'b', 'X', '')
"---
echo substitute('aaa', 'a', 'b', 'g')
"---
echo substitute('abc', 'B', 'x', '')
"---
echo substitute('abc', '', '-', 'g')
"---
echo substitute('abc', 'x*', '-', 'g')
"---
echo matchstr('abc123', '\\d\\+')
"---
echo matchstr('abc', 'x')
"---
echo matchstr('abc123', 'c', 1)
"---
echo matchstr('abc123abc', 'abc', 1)
"---
echo matchstr('abc123abc', 'abc', 0, 2)
"---
echo matchstr(['a', 'b1'], '\\d')
"---
echo matchstr('abc', 'b', -5)
"---
echo matchstr('abc', 'b', 9)
"---
echo string('a''b')
"---
echo string("a\nb")
"---
echo string(1.0)
"---
echo string([1, 'a', [2]])
"---
echo string({'a': {'b': 1}})
"---
echo string(v:true)
"---
echo string(1.0e20)
"---
echo string(1.5e-7)
"---
echo string(-0.0)
"---
echo printf('%d', 3.7)
"---
echo printf('%s', [1])
"---
echo printf('%5.2f|%-5d|%05d|%x|%X|%o|%b|%e|%g', 3.14159, 42, 42, 255, 255, 8, 5, 12345.678, 0.0001)
"---
echo printf('%c%c', 65, 0x1F600)
"---
echo printf('%%')
"---
echo printf('%.3s', 'héllo')
"---
echo printf('%5s|%-5s|', 'é', 'é')
"---
echo printf('%2$s %1$s', 'a', 'b')
"---
echo printf('%*d', 5, 3)
"---
echo printf('%d')
"---
echo printf('%d %d', 1)
"---
echo printf('%z', 1)
"---
echo printf('%ld', 1)
"---
echo printf('%.0f', 0.5)
"---
echo printf('%.0f', 1.5)
"---
echo printf('%s', 1.0e100)
"---
echo printf('%#x %#o %#b', 255, 8, 5)
"---
echo printf('%+d % d', 5, 5)
"---
echo printf('%S', 'é')
"---
echo printf('%10.3e', 1234.5)
"---
echo printf('%G', 1e-10)
"---
echo printf('%s', v:null)
"---
echo printf('%d', v:true)
"---
echo printf('%s', {})
"---
echo printf('%f', 'x')
"---
echo printf('%d', '12x')
"---
echo printf('%.2d', 5)
"---
echo printf('%x', -1)
"---
echo printf('%u', -1)
"---
echo printf('%i', 5)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo l
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo sort(copy(l))
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo sort(copy(l), 'i')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo sort(copy(l), 'n')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo sort(copy(l), 'N')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo reverse(copy(l))
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo uniq(sort(copy(l)))
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo uniq(copy(l))
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo uniq(copy(l), 'i')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo count(l, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo count(l, 'a')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo count(l, 'a', 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo count(l, 'a', 0, 2)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo count(l, 1, 0, 3)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo count(l, 1, 0, -9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 1, 3)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 1, -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 'a', 0, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 'A', 0, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 1, 9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo index(l, 1, -9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo get(l, 0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo get(l, -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo get(l, 99)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo get(l, 99, 'd')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo get(l, -99, 'd')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo get(l, 'a')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo min(l)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo max(l)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo min([])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo max([])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo min({'a': 3, 'b': 1})
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo max({})
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo min([1.5, 2])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo max(['a', 'b'])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo join(l)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo join(l, '')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo join(l, ', ')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo join([[1, 2], 3])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo join([{}], ',')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo join([1.5, v:true, v:null])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo insert(copy(l), 9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo insert(copy(l), 9, 2)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo insert(copy(l), 9, -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo insert(copy(l), 9, 8)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo insert(copy(l), 9, 9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo insert(copy(l), 9, -9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo insert([], 1, 0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo add(copy(l), [1])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), 0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), 1, 3)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), 3, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), -3, -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), 8)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), 0, 8)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo remove(copy(l), 2, -9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo extend(copy(l), [9])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo extend(copy(l), [9], 0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo extend(copy(l), [9], 3)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo extend(copy(l), [9], -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo extend(copy(l), [9], 8)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo extend(copy(l), [9], 9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo extend(copy(l), 9)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo flatten([1, [2, [3, [4]]]])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo flatten([1, [2, [3, [4]]]], 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo flatten([1, [2, [3, [4]]]], 0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo flatten([1, [2]], -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(5)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(2, 5)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(5, 2)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(5, 2, -1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(0, 10, 3)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(1, 5, 0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(0, 10, -3)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(-3)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(1, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(3, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(2, 2, 5)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo range(9223372036854775807, 9223372036854775807)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map(copy(l), 'v:val . v:key')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map(copy(l), 'v:key')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo filter(copy(l), 'v:val > 1')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo filter(copy(l), 'v:val == 1')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo mapnew(l, 'v:val')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map({'a': 1, 'b': 2}, 'v:val * 2')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map({'a': 1}, 'v:key')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo filter({'a': 1, 'b': 2}, 'v:val > 1')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map('abc', 'v:val . v:val')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map('abc', 'v:key')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo filter('abc', 'v:val != "b"')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map([1], '"x"')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo map('ab', '1')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo mapnew({'a': 1}, 'v:val + 1')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo deepcopy([[1], {'a': [2]}])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo deepcopy(l, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo copy({'a': [1]})
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty([])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty('')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty(0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty(0.0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty({})
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty(v:null)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty(v:false)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty('0')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo empty([0])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo len('é')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo len(123)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo len(1.5)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo len([1, 2])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo len({'a': 1})
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo len(v:null)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo type(0)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has_key({'a': 1}, 'a')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has_key({'a': 1}, 'b')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has_key({1: 2}, 1)
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has_key([], 'a')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has_key({}, [])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo items([1])
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo keys('a')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('1 + 2')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('[1, 2]')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('1 2')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('{')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('"a\\x"')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('v:true')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('@a')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo eval('$HOME') == $HOME
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('l')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('l[0]')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('l[99]')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('g:l')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('l:l')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('&nosuch')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('+ts')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('+nosuch')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('#BufEnter')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('##BufEnter')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('*abs')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('*g:x')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('?')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists(':let')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists(':nosuch')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('v:true')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('v:nosuch')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('$PATH')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('@a')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo exists('@')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('float')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('eval')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('unix')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('mac')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('linux')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('gui_running')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('multi_byte')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('ttyin')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('wsl')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has('')
"---
let l = [3, 'b', 1, 'A', 2, 'a', 10, 1] | echo has(1)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @a
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @"
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @0
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @1
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @-
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @/
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @:
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @.
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @%
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @#
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @=
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @_
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @*
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @+
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @A
"---
normal! ihello\<CR>x\<Esc>ggyy | echo @z
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg()
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('"')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('0')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('0', 1)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('0', 1, 1)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('a', 0, 1)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('%')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('=')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('=', 1)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('/')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('x', 1, 1)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('ab')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg(1)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('é')
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('0', 2)
"---
normal! ihello\<CR>x\<Esc>ggyy | echo getreg('0', 'x')


"---
echo sort(keys({'b': 2, 'a': 1}))
"---
echo sort(values({'b': 2, 'a': 1}))
"---
echo sort(items({'b': 2, 'a': 1}))
"---
echo exists('##BufEnter')
"---
echo exists('##bufenter')
"---
echo exists('##BufCreate')
"---
echo exists('##BufEnter,x')
"---
echo exists('##BufEnter x')
"---
echo exists('##BufEnter|')
"---
echo exists('##')
"---
echo exists('##Buf')
"---
echo exists('##BufEnterX')
"---
echo exists('##FileEncoding')
"---
echo exists('##*')
"---
echo exists('##all')
"---
echo exists('##LspAttach')
"---
echo exists('##User')
"---
echo line('.', 1000)
"---
echo line('.', 1001)
"---
echo line('.', 0)
"---
echo col('.', 1000)
"---
echo line('.', -1)
"---
split | echo line('.', 1001)
"---
split | echo line('.', 1002)
"---
echo has('vim_starting')
"---
echo has('VIM_STARTING')
"---
echo has('vim_starting', 1)
"---
echo has('vim_starting ')
