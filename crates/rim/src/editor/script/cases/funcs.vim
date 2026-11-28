echo type(1) type('') type([]) type({}) type(1.0) type(v:true) type(v:null)
"---
echo len('héllo') strlen('héllo') strchars('héllo') strcharlen("éx") len([1, 2]) len({'a': 1}) len(123)
"---
echo toupper('aé') tolower('AÉ')
"---
echo repeat('ab', 3) repeat([1], 2) repeat('x', -1)
"---
echo join([1, 2, 3], '-') join(['a', 'b'])
"---
echo split('a b  c') split('a,b,,c', ',') split('a,b,,c', ',', 1) split('a1b22c', '[0-9]')
"---
echo range(4) range(2, 4) range(0, 10, 5) range(3, 1, -1)
"---
echo range(1, 2, 0)
"---
echo reverse([1, 2, 3]) reverse('abc')
"---
echo sort(['b', 'a', 'c']) sort([10, 9, 100]) sort([3, 1, 2], 'n')
"---
echo add([1], 2) index([1, 2, 3], 2) index([1], 5) get([1, 2], 1) get([1, 2], 5, 'x') get([1, 2], 5)
"---
echo empty('') empty([1]) empty(0) empty({}) empty(v:null) empty(v:false) empty(0.0)
"---
echo strpart('abcdef', 2, 3) strpart('abc', 1) stridx('hello', 'l') stridx('hello', 'l', 3) strridx('hello', 'l') stridx('a', 'z')
"---
echo char2nr('A') nr2char(8364) escape('a.b', '.') tr('abc', 'ab', 'xy')
"---
echo tr('a', 'ab', 'x')
"---
echo matchstr('foo123bar', '[0-9]') matchstr('foo', '[0-9]') substitute('foo bar', 'o', '0', 'g') substitute('foo bar', 'o', '0', '')
"---
echo substitute('a b', ' ', '-', '') trim('  x  ') trim('xxaxx', 'x')
"---
echo printf('%d-%s', 5, 'a') printf('%05d', 42) printf('%-5d|', 42) printf('%5.2f', 3.14159)
"---
echo printf('%x %X %o %b', 255, 255, 8, 5) printf('%#x %#o %#b', 255, 8, 5) printf('%+d % d', 5, 5) printf('%c', 65)
"---
echo printf('%.3s', 'abcdef') printf('%5s|%-5s|', 'a', 'b') printf('%e', 1500.0) printf('%E', 0.00015) printf('%g', 0.0001) printf('%g', 1.0e-5)
"---
echo printf('%g', 100000.0) printf('%g', 1.0e6) printf('%%') printf('%3d', -5) printf('%03d', -5) printf('%08.3f', 3.14159)
"---
echo printf('%.3d', 5) printf('%u', -1) printf('%ld', 5)
"---
echo printf('%d')
"---
echo printf('x', 1)
"---
echo printf('%q', 1)
"---
echo printf('%s %s', [1], {'a': 1})
"---
echo abs(-3) abs(-2.5) min([3, 1, 2]) max([3, 1, 2]) round(2.5) floor(2.7) ceil(2.1) sqrt(16) pow(2, 10) exp(0) log10(1000) float2nr(3.9)
"---
echo str2nr('12') str2nr('ff', 16) str2nr('0x1f', 16) str2nr('11', 2) str2float('1.5abc') string('a') string([1, 'a''b']) string(1.5) string(7)
"---
echo sort(keys({'b': 1, 'a': 2})) sort(values({'b': 1, 'a': 2})) sort(items({'b': 1, 'a': 2}))
"---
echo keys([])
"---
echo has_key({'a': 1}, 'a') has_key({'a': 1}, 'b')
"---
echo has_key([], 'b')
"---
echo get({'a': 1}, 'a') get({'a': 1}, 'b', 'd') get({'a': 1}, 'b')
"---
echo get(1, 2)
"---
echo min({'a': 3, 'b': 1}) max({'a': 3, 'b': 1})
"---
echo min(1)
"---
echo remove([1, 2, 3], 1) remove([1, 2, 3], -1) remove([1, 2, 3, 4], 1, 2) remove({'a': 1}, 'a')
"---
echo remove([1], 5)
"---
echo remove([1, 2, 3], 2, 1)
"---
echo remove({'a': 1}, 'b')
"---
echo insert([2, 3], 1) insert([1, 3], 2, 1) insert([1], 2, -1) insert([1], 2, 1)
"---
echo insert([1], 2, 5)
"---
echo extend([1], [2, 3]) extend([1, 4], [2, 3], 1) sort(items(extend({'a': 1}, {'a': 2, 'b': 3}))) sort(items(extend({'a': 1}, {'a': 2, 'b': 3}, 'keep')))
"---
echo extend({'a': 1}, {'a': 2}, 'error')
"---
echo count([1, 2, 1], 1) count(['a', 'A'], 'a') count(['a', 'A'], 'a', 1) count({'x': 1, 'y': 1}, 1) count('abab', 'ab')
"---
echo uniq([1, 1, 2, 2, 1]) flatten([1, [2, [3]]]) flatten([1, [2, [3]]], 1) copy({'a': [1]})
"---
echo flatten([], -1)
"---
echo eval('1 + 2') has('float') has('nosuch')
"---
echo eval('[')
"---
echo [1, 2]->len() 'abc'->toupper() [3, 1]->sort()->string() {'a': 1}->keys()->string()
"---
let a = [3, 1] | let a[0] = a | echo sort(a)
"---
let a = [] | call add(a, a) | echo flatten(a)
"---
let a = [] | call add(a, a) | let b = [] | call add(b, b) | echo a == b
"---
let a = [1, 2] | echo deepcopy(a) is a copy(a) is a
"---
let a = [] | call add(a, a) | let b = deepcopy(a) | echo b is b[0] b is a
"---
let a = [] | call add(a, a) | echo deepcopy(a, 1)
"---
echo printf('%.3g', 1234.5678) printf('%.3g', 0.00012345) printf('%g', 1234567.0) printf('%g', 12345678.0) printf('%G', 1.5e-10) printf('%.0g', 1.5) printf('%.10g', 1.0/3)
"---
echo printf('%e', 1500.0) printf('%E', 0.00015) printf('%.2e', 12345.678) printf('%.0e', 5.0) printf('%e', 0.0) printf('%e', 1.0e100) printf('%e', 1.0e-100)
"---
echo printf('%f', 1.5) printf('%.2f', 3.14159) printf('%.0f', 2.5) printf('%.0f', 3.5) printf('%F', 1.5) printf('%f', 1.0e20) printf('%.3f', -0.0005)
"---
echo printf('%f', 1.0/0) printf('%f', -1.0/0) printf('%e', 1.0/0) printf('%g', 0.0/0) printf('%F', 1.0/0) printf('%E', 1.0/0) printf('%G', 0.0/0) printf('%+f', 1.0/0) printf('% f', 1.0/0)
"---
echo printf('%f', 1.0e308) printf('%f', 1.0e307) printf('%f', 9.9e306)
"---
echo printf('%+d', 5) printf('% d', 5) printf('%+.2f', 1.5) printf('% .2f', 1.5) printf('%+e', 1.5) printf('%+g', 1.5)
"---
echo printf('%8.3f|', 3.14159) printf('%-8.3f|', 3.14159) printf('%08.3f|', 3.14159) printf('%08.3f|', -3.14159) printf('%+08.3f|', 3.14159)
"---
echo printf('%10g|', 1.5) printf('%-10g|', 1.5) printf('%010g|', 1.5) printf('%010e|', 1.5) printf('%10e|', 1.5)
"---
echo 1.5 . '' 1.0e10 . '' (1.0/0) . '' string(1.0/0) 1.5e-7 . 'x'
"---
echo printf('%s', 1.5) printf('%s', 1.0/0) printf('%d', 1.5)
"---
echo printf('%d', '12abc') printf('%d', 'x') printf('%s', [1,2]) printf('%s', {'a': 1}) printf('%5s|', 'ab') printf('%-5s|', 'ab') printf('%.1s|', 'ab')
"---
echo printf('%x', 255) printf('%X', 255) printf('%o', 8) printf('%b', 5) printf('%#x', 255) printf('%#o', 8) printf('%#b', 5) printf('%#X', 255) printf('%#B', 5)
"---
echo printf('%x', -1) printf('%o', -1) printf('%b', -1) printf('%u', -1) printf('%08x', 255) printf('%.4x', 255) printf('%8.4x|', 255)
"---
echo printf('%c', 65) printf('%5c|', 65) printf('%-5c|', 65) printf('%c', 0) . 'x' printf('%c', 0x141)
"---
echo printf('%%') printf('%5%') printf('abc') printf('%')
"---
echo printf('%d %d', 1)
"---
echo printf('%d', 1, 2)
"---
echo printf('%z', 1)
"---
echo printf('%2$s %1$s', 'a', 'b') printf('%1$d %1$d', 7)
"---
echo printf('%*d|', 5, 42) printf('%-*d|', 5, 42) printf('%.*f', 2, 3.14159)
"---
echo printf('%ld', 5) printf('%lld', 5) printf('%hd', 5) printf('%lu', 5) printf('%lx', 255)
"---
echo printf('%i', 5) printf('%5i|', 5) printf('%S', 'ab') printf('%.1S', 'ab')
"---
echo printf('%s')
"---
echo printf()
"---
echo printf(5)
"---
echo printf('%s', v:true) printf('%d', v:true) printf('%s', v:null) printf('%d', v:null)
"---
echo printf('%5s|', 'é') printf('%-5s|', 'é') printf('%5S|', 'é') printf('%5S|', '日本') printf('%.2S|', '日本') printf('%.3S|', '日本') printf('%.0S|', 'ab')
"---
echo printf('%-+5d|', 5) printf('%+5d|', 5) printf('% 05d|', 5) printf('%05d|', -5) printf('%#.3o|', 8) printf('%.0d|', 0) printf('%.0x|', 0) printf('%#x|', 0) printf('%#o|', 0) printf('%#b', 0)
"---
echo printf('%1$s %1$s', 'a') printf('%2$s %1$s', 'a', 'b') printf('%1$*2$d|', 5, 4) printf('%2$.*1$f', 2, 3.14159)
"---
echo printf('%1$s %s', 'a', 'b')
"---
echo printf('%s %1$s', 'a', 'b')
"---
echo printf('%0$s', 'a')
"---
echo printf('%2$s', 'a', 'b')
"---
echo printf('%1$s %1$d', 'a')
"---
echo printf('%3$s', 'a')
"---
echo printf('%1$', 'a')
"---
echo printf('%99999999999d', 1)
"---
echo printf('%*d', 99999999, 1)
"---
echo printf('%.*d', 99999999, 1)
"---
echo printf('%-*d|', -5, 1) printf('%*d|', -5, 1) printf('%.*d|', -2, 1)
"---
echo printf('%d', [1])
"---
echo printf('%d', {})
"---
echo printf('%s', [1, 'a', {'b': 2}])
"---
echo printf('%f', 'x')
"---
echo printf('%f', 3) printf('%e', 3) printf('%g', 3)
"---
echo printf([], 1)
"---
echo printf('%s %s %s')
"---
echo printf('%hd', 70000) printf('%hu', 70000) printf('%hx', 70000) printf('%zd', 5) printf('%lld', -5) printf('%D', 5) printf('%U', -1) printf('%O', 8)
"---
echo printf('%.2f%%', 99.5) printf('100%%') printf('%%d') printf('%d%%', 5)
"---
echo printf("%s\n%s", 'a', 'b')
"---
echo printf('%10.4f|', 3.14159265) printf('%-10.2e|', 12345.678) printf('%+.1f', -0.04) printf('%.1f', -0.04) printf('%f', -0.0)
"---
echo printf('%g', 100.0) printf('%g', 0.1) printf('%g', 1e-3) printf('%g', 9.9e-4) printf('%g', 9999999.0) printf('%g', 1.0e7) printf('%.2g', 1234.0) printf('%g', -1.5e20)
"---
echo printf('%.20f', 0.1) printf('%.15g', 0.1) printf('%.3e', 0.0001234)
"---
echo printf('%s', 'a', 'b')
"---
let d = {'name': 1, 'age': 2, 'city': 3, 'a': 4, 'b': 5, 'zz': 6, 'x1': 7, 'x2': 8}
echo sort(keys(d))
echo sort(values(d))
echo sort(items(d))
echo len(d)
"---
let d = {}
for i in range(40)
  let d['key' . i] = i
endfor
echo len(d) sort(keys(d))
"---
let d = {}
for i in range(40)
  let d['k' . i] = i
endfor
for i in range(0, 39, 2)
  call remove(d, 'k' . i)
endfor
echo len(d) sort(keys(d))
for i in range(20)
  let d['n' . i] = i
endfor
echo len(d) sort(keys(d))
"---
let d = {'b': 1, 'a': 2}
let d.c = 3
call remove(d, 'b')
let d.b = 4
echo sort(keys(d)) sort(items(d))
"---
let d = {'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5}
echo copy(d) == d deepcopy(d) == d sort(items(extend({'z': 0}, d))) sort(items(filter(copy(d), 'v:val > 2'))) sort(items(map(copy(d), 'v:val * 2')))
"---
let d = {'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5, 'six': 6, 'seven': 7, 'eight': 8, 'nine': 9, 'ten': 10, 'eleven': 11, 'twelve': 12, 'thirteen': 13, 'fourteen': 14, 'fifteen': 15, 'sixteen': 16, 'seventeen': 17}
echo len(d) sort(keys(d))
echo d == deepcopy(d) len(d)
"---
let g:alpha = 1
let g:beta = 2
let g:gamma = 3
let g:delta = 4
echo sort(keys(g:))
"---
echo sort(keys({'': 1, ' ': 2, 'é': 3, '日本': 4, 'A': 5, 'a': 6}))
"---
echo abs(-3) abs(3) abs(-2.5) abs('x') abs('-4') abs(v:true)
"---
echo abs([])
"---
echo abs({})
"---
echo add([1], 2) add([], [3])
"---
echo add(1, 2)
"---
echo atan(1) atan2(1, 2) atan2(1, 1.0) pow(2, 3) pow(2.0, 0.5) pow(2, -1)
"---
echo atan('x')
"---
echo atan2(1, 'x')
"---
echo ceil(1.2) ceil(-1.2) ceil(3) floor(-1.2) floor(2.9) round(2.5) round(-2.5) round(2.4) round(7)
"---
echo cos(0) sin(0) tan(0) exp(0) exp(1) log(1) log10(100) sqrt(16) sqrt(2) sqrt(-1) log(0) log(-1)
"---
echo sqrt('4')
"---
echo char2nr('a') char2nr('é') char2nr('日') char2nr('') char2nr('abc') char2nr('a', 1)
"---
echo char2nr('a', 'x')
"---
echo nr2char(65) nr2char(233) nr2char(0x65e5) nr2char(0) . 'x' nr2char(65, 1)
"---
echo nr2char(-1)
"---
echo nr2char(9999999999)
"---
echo nr2char(65, 'x')
"---
echo copy([1, [2]]) copy({'a': 1}) copy('s') copy(1.5) deepcopy([1, [2]]) deepcopy(1) deepcopy({'a': [1]})
"---
let a = [1, [2]]
let b = copy(a)
let c = deepcopy(a)
call add(a[1], 3)
echo a b c
"---
echo deepcopy([1], 2)
"---
echo deepcopy([1], 'x')
"---
echo deepcopy([[1]], v:true) deepcopy([[1]], 0)
"---
echo count('abcabc', 'b') count('aaa', 'aa') count('abc', '') count('aAa', 'a', 1) count('AbaB', 'ab', 1)
"---
echo count([1, 2, 1, 3], 1) count([1, 2, 1, 3], 1, 0, 1) count([1, 2, 1, 3], 1, 0, -1) count(['a', 'A'], 'a', 1) count([], 1)
"---
echo count([1], 1, 0, 5)
"---
echo count({'a': 1, 'b': 1, 'c': 2}, 1)
"---
echo count({'a': 1}, 1, 0, 0)
"---
echo count(1, 1)
"---
echo empty('') empty('a') empty(0) empty(1) empty(0.0) empty(1.5) empty([]) empty([0]) empty({}) empty({'a': 0}) empty(v:true) empty(v:false) empty(v:null)
"---
echo escape('a.b*c', '.*') escape('\a', '\') escape('', 'x') escape('éa', 'é') escape('a b', ' ')
"---
echo eval('1 + 2') eval('[1, 2]') eval("'x'") eval(' 3 ') eval('1.5')
"---
echo eval('1 +')
"---
echo eval('1 2')
"---
echo eval('nosuch')
"---
echo eval([])
"---
echo exists('g:nosuch') exists('&ts') exists('+ts') exists('&nosuch') exists('*len') exists('*nosuch') exists('$HOME') exists('$NOSUCHVARX') exists(':echo') exists(':nosuchcmd') exists('#x') exists('')
"---
let g:v = 1
let d = {'a': [1, 2]}
echo exists('g:v') exists('d') exists('d.a') exists('d.b') exists('d.a[1]') exists('d.a[5]') exists('d.a[') exists('g:v x')
"---
echo extend([1], [2, 3]) extend([1, 4], [2, 3], 1) extend([1], [2], -1) extend([1], [2], 1) extend([1], [2], 0)
"---
echo extend([1], [2], 5)
"---
echo extend([1], [2], 'x')
"---
echo sort(items(extend({'a': 1}, {'a': 2, 'b': 3}, 'force'))) sort(items(extend({'a': 1}, {'a': 2, 'b': 3}, 'keep')))
"---
echo extend({'a': 1}, {'a': 2}, 'nosuch')
"---
echo extend({'a': 1}, [1])
"---
echo extend(1, 2)
"---
echo flatten([1, [2, [3, [4]]]]) flatten([1, [2, [3, [4]]]], 1) flatten([1, [2, [3, [4]]]], 0) flatten([[1], [2]], 2) flatten([])
"---
echo flatten(1)
"---
echo flatten([1], 'x')
"---
echo flatten([[1]], -1)
"---
echo float2nr(1.9) float2nr(-1.9) float2nr(3) float2nr(1.0e20) float2nr(-1.0e20) float2nr(0.0/0)
"---
echo float2nr('x')
"---
echo get([1, 2], 0) get([1, 2], -1) get([1, 2], 5) get([1, 2], 5, 'd') get({'a': 1}, 'a') get({'a': 1}, 'b', 7) get([1], 'x')
"---
echo get('s', 0, 3)
"---
echo get([1], [])
"---
echo has('vim') has('float') has('eval') has('nosuch') has('') has('FLOAT')
"---
echo has_key({'a': 1}, 'a') has_key({'a': 1}, 'b') has_key({1: 2}, 1) has_key({}, '')
"---
echo has_key({'a': 1}, [])
"---
echo index([1, 2, 3, 2], 2) index([1, 2, 3, 2], 2, 2) index([1, 2, 3, 2], 2, -1) index([1, 2, 3], 5) index(['a', 'A'], 'A', 0, 1) index([1, 2], 2, 9) index([], 1)
"---
echo index('s', 1)
"---
echo insert([1, 2], 0) insert([1, 2], 0, 1) insert([1, 2], 0, 2) insert([1, 2], 0, -1) insert([], 5)
"---
echo insert([1], 2, 9)
"---
echo insert(1, 2)
"---
echo items([1, 2]) items('aé') items({'a': 1}) items('')
"---
echo items(1)
"---
echo join([1, 'a', [2, 3], {'k': 'v'}, 1.5], '-') join([]) join(['a', 'b']) join([1, 2], '')
"---
echo join('x')
"---
echo join([1], [])
"---
echo len('abc') len('é') len(123) len([1, 2]) len({'a': 1}) len('') len(-5)
"---
echo len(1.5)
"---
echo len(v:true)
"---
echo line('.') line('$') line('x') line("'x") col('.') col('$') col('x')
"---
echo line(5)
"---
echo col(5)
"---
echo col('.', 'x')
"---
echo col('.', 999)
"---
echo line('.', 999)
"---
echo max([1, 5, 3]) min([1, 5, 3]) max({'a': 1, 'b': 9}) min([]) max([]) max(['3', '10']) min([1.5])
"---
echo max([[]])
"---
echo max(1)
"---
echo range(4) range(2, 5) range(5, 2, -1) range(0) range(1, 10, 3) range(2, 1) range(-3) range(1, 0)
"---
echo range(1, 3, 0)
"---
echo range(5, 1)
"---
echo range('x')
"---
echo range(1, [])
"---
echo remove([1, 2, 3], 0) remove([1, 2, 3], -1) remove([1, 2, 3, 4], 1, 2) remove([1, 2, 3], 0, -1) remove({'a': 1}, 'a')
"---
echo remove([1, 2, 3], 5)
"---
echo remove([1, 2, 3], 0, 5)
"---
echo remove({'a': 1}, 'a', 1)
"---
echo remove(1, 1)
"---
echo repeat('ab', 3) repeat('a', 0) repeat('a', -1) repeat('', 5) repeat([1, 2], 2) repeat([1], 0) repeat(12, 2) repeat('é', 2)
"---
echo repeat('a', 'x')
"---
echo repeat({}, 2)
"---
echo reverse([1, 2, 3]) reverse('abc') reverse('aé日') reverse([]) reverse('')
"---
echo reverse(1)
"---
let a = [1, 2, 3]
echo reverse(a) a
"---
echo sort([3, 1, 2]) sort(['b', 'a', 'C']) sort(['b', 'a', 'C'], 'i') sort(['b', 'a', 'C'], 1) sort([3, 1, 2], 'n') sort(['10', '9', '1'], 'n') sort([3, 1, 2], 'N') sort([1.5, 0.5, 1], 'f')
"---
echo sort([[2], [1]]) sort([2, 'a', [1], {'k': 1}, 1.5]) sort([1, 2, 3], 'l') sort([], 'x')
"---
echo sort([3, 1, 2], 2)
"---
echo sort(1)
"---
echo sort([3, 1], 'nosuchfunc')
"---
echo sort([3, 1], 'n', 1)
"---
let a = [3, 1, 2]
echo sort(a) a
"---
echo uniq([1, 1, 2, 2, 2, 3, 1]) uniq(['a', 'A', 'a']) uniq(['a', 'A', 'a'], 'i') uniq([]) uniq([1])
"---
echo uniq(1)
"---
echo split('a b c') split(' a  b ') split('a,b', ',') split(',a,,b,', ',') split(',a,,b,', ',', 1) split('', ',') split('', ',', 1) split('abc', '') split('abc', 'b', 1)
"---
echo split('a1b', '[0-9]') split('a12b', '[0-9]') split('abc', 'x') split('abc', '.') split('abc', '.', 1)
"---
echo split([])
"---
echo split('a', [])
"---
echo split('a', 'b', [])
"---
echo str2float('1.5') str2float('  -2.5e1') str2float('+3') str2float('x') str2float('') str2float('1e') str2float('inf') str2float('nan') str2float('0x10')
"---
echo str2nr('12') str2nr('  -12abc') str2nr('0x10') str2nr('0x10', 16) str2nr('10', 16) str2nr('0b101', 2) str2nr('101', 2) str2nr('17', 8) str2nr('0o17', 8) str2nr('+5') str2nr('') str2nr('x') str2nr('1'000', 10, 1)
"---
echo str2nr('1', 3)
"---
echo str2nr('9999999999999999999999')
"---
echo strchars('aé日') strchars('a') strchars('') strcharlen('aé日') strchars('a', 1) strlen('aé日') strlen('') strlen(12)
"---
echo strchars('a', 2)
"---
echo strchars('a', 'x')
"---
echo stridx('abcabc', 'b') stridx('abcabc', 'b', 2) stridx('abc', 'x') stridx('abc', '') stridx('abc', '', 5) stridx('abc', 'a', -1) stridx('abc', 'c', 3) stridx('aé', 'é')
"---
echo strridx('abcabc', 'b') strridx('abcabc', 'b', 3) strridx('abc', 'x') strridx('abc', '') strridx('abc', 'c', -1) strridx('abc', '', 1) strridx('abab', 'ab', 1)
"---
echo stridx([], 'a')
"---
echo strpart('abcdef', 2) strpart('abcdef', 2, 2) strpart('abcdef', -2, 3) strpart('abcdef', 4, 10) strpart('abcdef', 10) strpart('abcdef', 1, -1) strpart('aé日b', 1, 2, 1) strpart('abc', 0, 0)
"---
echo strpart([], 1)
"---
echo string(1) string('a') string("it's") string([1, 'a']) string({'a': 1}) string(1.5) string(v:null) string(-0.0) string([])
"---
echo tolower('ABC é') toupper('abc é ß') tolower('İ') toupper('ǆ') toupper('')
"---
echo tr('abc', 'ab', 'xy') tr('hello', 'el', 'ip') tr('aé', 'é', 'e') tr('abc', '', '') tr('a', 'a', 'é')
"---
echo tr('abc', 'abc', 'x')
"---
echo tr('abc', 'a', 'xy')
"---
echo tr('xyz', 'a', 'xy')
"---
echo trim('  a  ') trim('xxaxx', 'x') trim('xxaxx', 'x', 1) trim('xxaxx', 'x', 2) trim('  a  ', '', 1) trim(' a ', ' ', 0) trim("\ta\n") trim('  ') trim('abc', 'ab')
"---
echo trim('a', 'b', 3)
"---
echo trim('a', 1)
"---
echo trim([])
"---
echo type(1) type('') type([]) type({}) type(1.5) type(v:true) type(v:null) type(v:false)
"---
echo substitute('foo', 'o', '0', '') substitute('foo', 'o', '0', 'g') substitute('foo', 'x', '0', 'g') substitute('foo', '', '-', '') substitute('abc', 'b', '[x]', '')
"---
echo matchstr('abc', 'b') matchstr('abc', 'x') matchstr('abcabc', 'b', 2) matchstr('abcabc', 'b', -3) matchstr('abcabc', 'b', 9) matchstr('abcbd', 'b', 0, 2) matchstr('abc', 'b', 0, 3) matchstr(['ab', 'cd'], 'c') matchstr(['ab', 'cd'], 'x') matchstr(['ab', 'cd'], 'd', 1)
"---
echo matchstr('abc', [])
"---
echo printf('%s', [1]) printf('%5.2f|', 3.14159)
"---
echo len(garbagecollect()) garbagecollect(1)
"---
echo getline(1) getline('.') getline(0) getline(5) getline(1, 2) getline(1, 0) getline(-1)
"---
echo getline([])
"---
echo getreg('a') getreg() getreg('"') getreg('a', 1, 1) getreg('!')
"---
echo getreg([])
"---
echo filter([1, 2, 3, 4], 'v:val > 2') filter([1, 2, 3, 4], 'v:key % 2 == 0') filter([], '1') filter(['a', 'b'], 'v:val == "a"')
"---
echo map([1, 2, 3], 'v:val * 2') map([1, 2, 3], 'v:key') map(['a', 'b'], 'v:val . v:key') map([], '1')
"---
echo mapnew([1, 2], 'v:val + 1') mapnew({'a': 1}, 'v:val * 5')
"---
let l = [1, 2, 3]
call map(l, 'v:val + 1')
echo l
call filter(l, 'v:val != 3')
echo l
"---
let d = {'a': 1, 'b': 2, 'c': 3}
call filter(d, 'v:key != "b"')
echo sort(keys(d))
call map(d, 'v:val * 10')
echo d.a d.c
"---
echo filter('abcd', 'v:val != "b"') map('abc', 'v:val . v:val') map('abc', 'v:key')
"---
echo filter([1], 'x +')
"---
echo filter([1], '[]')
"---
echo map([1], 'nosuch')
"---
echo filter(1, '1')
"---
echo map({'a': 1}, 'v:key . v:val')
"---
let l = []
call foreach([1, 2, 3], 'call add(l, v:val * 2)')
echo l
"---
echo filter([1, 2], '1') == [1, 2] map([1, 2], '1')
"---
echo exists('v:val') exists('v:key') exists('v:true') exists('v:nosuch') exists('v:version')
"---
echo v:true v:false v:null v:version v:count1 v:numbermax v:numbermin v:numbersize v:maxcol v:t_list v:searchforward
"---
echo v:val
"---
let v:errmsg = 'x'
echo v:errmsg
"---
let v:errmsg = 1
"---
let v:version = 5
"---
let v:nosuch = 5
"---
unlet v:errmsg
"---
let v:count1 = 3
"---
echo printf("%d",1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
"---
echo printf("%d",1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
"---
echo abs(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
"---
echo 'x'->printf(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
"---
if 0 | echo abs(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1) | endif | echo 'after'
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'n')
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'N')
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'f')
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'i')
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 1)
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'NoSuchFunc')
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), {})
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'n', {})
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'l')
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), '')
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 'N', {})
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), [])
"---
let l = [3, 'b', 1, 'A', 2.5, 10] | echo sort(copy(l), 1.5)
"---
let l = [1, 1, 'a', 'A', 'a', 2, 2] | echo uniq(copy(l), 'n')
"---
let l = [1, 1, 'a', 'A', 'a', 2, 2] | echo uniq(copy(l), 'i')
"---
let l = [1, 1, 'a', 'A', 'a', 2, 2] | echo uniq(copy(l), 1)
"---
let l = [1, 1, 'a', 'A', 'a', 2, 2] | echo uniq(copy(l), 'NoSuchFunc')
"---
let l = [1, 1, 'a', 'A', 'a', 2, 2] | echo uniq(copy(l), {})
"---
let l = [1, 1, 'a', 'A', 'a', 2, 2] | echo uniq(copy(l), 'n', {})
"---
echo map([1], '')
"---
echo filter([1], '  ')
"---
echo map([1], '1 2')
"---
echo map([1], '1  ')
"---
echo map({'a': 1}, '')
"---
echo map([1], 'nosuchvar')
"---
echo filter('ab', '')
"---
echo mapnew([1], '+')

"---
echo exists('*{"abs"}')
"---
echo exists('*{"nosuch"}')
"---
echo exists('*a{"bs"}')
"---
echo exists('*{"a"}bs')
"---
echo exists('*{"a"}{"b"}{"s"}')
"---
echo exists('*{')
"---
echo exists('*{"abs"')
"---
echo exists('*{}')
"---
echo exists('*{1}')
"---
echo exists('*{[]}')
"---
echo exists('*{{}}')
"---
echo exists('*{"abs"}(')
"---
echo exists('*{"abs"}()')
"---
echo exists('*{"abs"} (')
"---
echo exists('*{"abs"}!')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*F{""}')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*g:{"F"}')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*{"g:F"}')
"---
function F()
endfunction
echo exists('*{"F"}')
let g:n = 'F' | echo exists('*{g:n}')
"---
function F()
endfunction
echo exists('*{"F"}')
let g:n = 'F' | echo exists('*{g:n}()')
"---
function F()
endfunction
echo exists('*{"F"}')
let g:n = 'F' | echo exists('*{g:n}x')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*{nosuchvar}')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*{"abs"}{nosuchvar}')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*{1+}')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*{"F"->toupper()}')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*{"abs"}.x')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*s:{"F"}')
"---
function F()
endfunction
echo exists('*{"F"}')
echo exists('*<SID>{"F"}')

"---
function F()
endfunction
echo exists('*g:F')
"---
function F()
endfunction
echo exists('*g:F()')
"---
function F()
endfunction
echo exists('*s:F')
"---
function F()
endfunction
echo exists('*{"g:"}F')
"---
function F()
endfunction
echo exists('*g:{"F"}')
"---
function F()
endfunction
echo exists('*{"g:F"}')
"---
function F()
endfunction
let g:Fn = function('F') | echo exists('*g:Fn')
"---
function F()
endfunction
let g:Fn = function('F') | echo exists('*g:{"Fn"}')
"---
function F()
endfunction
let g:Fn = function('F') | echo exists('*{"g:Fn"}')
"---
function F()
endfunction
let g:Fn = function('F') | echo exists('*{"Fn"}')

"---
function F()
  return 7
endfunction
echo {"F"}()
"---
function F()
  return 7
endfunction
echo F{""}()
"---
function F()
  return 7
endfunction
call {"F"}()
"---
function F()
  return 7
endfunction
echo call('{"F"}', [])
"---
function F()
  return 7
endfunction
function {"G"}()
  return 8
endfunction
echo G()
"---
function F()
  return 7
endfunction
function! G{""}()
  return 8
endfunction
echo exists('*G')
"---
function F()
  return 7
endfunction
function {"s:G"}()
  return 8
endfunction
echo exists('*s:G')
"---
function F()
  return 7
endfunction
delfunction {"F"}
echo exists('*F')
"---
function F()
  return 7
endfunction
echo exists('*{[1]}')
"---
function F()
  return 7
endfunction
echo exists('*{{}}')
"---
function F()
  return 7
endfunction
echo {"F"}
"---
function F()
  return 7
endfunction
let g:x{"y"} = 1 | echo g:xy
"---
function F()
  return 7
endfunction
let g:{[1]} = 1
"---
function F()
  return 7
endfunction
unlet! g:{"nosuch"}
"---
function F()
  return 7
endfunction
echo exists('*{"s:F"}')
"---
function F()
  return 7
endfunction
echo function('{"F"}')()
"---
echo getregtype('a')
"---
echo getregtype()
"---
echo getregtype('')
"---
echo getregtype('_') getregtype('/') getregtype(':') getregtype('%') getregtype('.') getregtype('=')
"---
echo getregtype('!') getregtype('[') getregtype('ab')
"---
echo getregtype([]) getregtype({}) getregtype(1.5)
"---
0put =['abc']
normal! gg0
normal! yy
echo getregtype('"') getregtype('0') getregtype()
"---
0put =['abc']
normal! gg0
normal! yiw
echo getregtype('"') getregtype('0') getregtype('1')
"---
0put =['abc', 'def', 'ghi']
normal! gg0
execute "normal! \<C-v>jly"
echo getregtype('"') getregtype('0') getregtype('-')
"---
0put =['abc', 'def', 'ghi']
normal! gg0
execute "normal! \<C-v>jj$\"ay"
echo getregtype('a') getregtype('"') string(getreg('a', 1, 1))
"---
0put =['abc', 'def', 'ghi']
normal! gg0
execute "normal! l\<C-v>jjd"
echo getregtype('"') getregtype('1') getregtype('-')
"---
let @a = 'x'
echo getregtype('a') getregtype('A')
"---
0put =['a', 'b']
normal! gg0
execute "normal! \<C-v>jy"
echo getregtype('"') getregtype('0')
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 2, 3, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 2, 3]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 2]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 2, 3, 0, 5, 6]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 0, 0, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 9, 20, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 2, 0, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [-1, 2, 3, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, -2, 3, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, 2, -3, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [99, 2, 3, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [7, 2, 3, 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", "x")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", {})
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, "2", "3", 0]) getpos("'a")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'a", [0, [], 3, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'A", [0, 3, 1, 0]) getpos("'A")[1:]
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'1", [0, 3, 1, 0]) getpos("'1")[1:]
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'[", [0, 3, 1, 0]) getpos("'[")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("']", [0, 3, 2, 0]) getpos("']")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'<", [0, 2, 3, 0]) getpos("'<") getpos("'>")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'>", [0, 4, 3, 0]) getpos("'<") getpos("'>")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'\"", [0, 2, 3, 0]) getpos("'\"")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("''", [0, 3, 2, 0]) getpos("''")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'`", [0, 3, 2, 0]) getpos("''")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'^", [0, 3, 2, 0]) getpos("'^")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'.", [0, 3, 2, 0]) getpos("'.")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'(", [0, 3, 2, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'", [0, 3, 2, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("'ab", [0, 3, 2, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("x", [0, 3, 2, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos("", [0, 3, 2, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(1, [0, 3, 2, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos([], [0, 3, 2, 0])
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 4, 3, 0]) line(".") col(".")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 9, 3, 0]) line(".") col(".")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 0, 3, 0]) line(".") col(".")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 2, 99, 0]) line(".") col(".")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 4, 0, 0]) line(".") col(".")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 4, 3, 0, 8]) line(".") col(".") getcurpos()
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 4, 3, 0, 20]) line(".") col(".") getcurpos()
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [5, 4, 3, 0]) line(".") col(".")
"---
set report=0 expandtab shiftwidth=2 tabstop=8 nonumber norelativenumber
append
alpha beta
gamma

delta epsilon zeta
.
echo setpos(".", [0, 4, 3, 0]) setpos("'a", getpos(".")) getpos("'a")
