let n = '/a/b/c.txt'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/c.tar.gz'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'c.txt'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'a/b/c'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '//'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'a/'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = ''
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '.'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '..'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '.hidden'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/.hidden.txt'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'a.b/c'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~/x'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~/x/y.z'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~root'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~root/x'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'é/日本.語'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'a b/c d.e'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'file.'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'a..b'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'x/y.z/'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/..'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/./b'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'a//b'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a//b//c.d'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/.x'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'x.'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '..x'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/tmp'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/tmp/'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/tmp/../tmp'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/tmp/.'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/nonexistent/../x'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/nonexistent/./x/..'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '\x'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'a\ b'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '1'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '12.5'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'c.e.f.g'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':h',':t',':t:r',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a.b/c'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a.b/c.d/e'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b.c/'
for m in [':h',':h:h',':h:h:h',':h:h:h:h',':t',':r',':r:r',':r:r:r',':e',':e:e',':e:e:e',':t:r',':t:e',':t:r:r',':t:e:e',':h:t',':h:r',':h:e',':r:h',':r:t',':e:r',':e:h',':r:e',':e:e:r',':e:e:r:r',':r:r:e',':h:t:r',':s?a?X?',':gs?a?X?',':t:s?\.?_?',':t:gs?\.?_?',':s?^?X?',':s/a/b/:e',':s?a?',':s?a',':s',':z',':',':h:z',':r:z','x',':S',':t:S',':8',':8:t',':~',':.',':t:~',':8:h',':s,a,b,:h',':s?a?b?:s?b?c?',':s!x!y!:t',':ss?x?y?']
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/c.txt'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/tmp'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/tmp/'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~/x'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/./b'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/../b'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/tmp/../tmp'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/nonexistent/x/..'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/nonexistent/.'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a//b'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '//a'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/.'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/..'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/..'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/../a'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/nonexistent/a b'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~root'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '~root/x'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'https://x.y/z'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = 'file:///a'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = '/a/b/c/../../d'
for m in [":p",":p:h",":p:t",":p:r",":p:e",":p:h:h",":p:t:r",":p:~",":p:.",":p:S",":p:s?a?X?",":~:p",":p:p"]
  echo string(n) string(m) string(fnamemodify(n, m))
endfor
"---
let n = $HOME
for m in [':~',':~:h',':~:t',':~:p',':p:~',':~:~',':.',':~:.',':.:~']
  echo string(fnamemodify(n, m)) == string(m) ? '' : substitute(string(fnamemodify(n, m)), escape($HOME, '\.'), 'HOMEDIR', 'g')
endfor
"---
let n = $HOME."/x"
for m in [':~',':~:h',':~:t',':~:p',':p:~',':~:~',':.',':~:.',':.:~']
  echo string(fnamemodify(n, m)) == string(m) ? '' : substitute(string(fnamemodify(n, m)), escape($HOME, '\.'), 'HOMEDIR', 'g')
endfor
"---
let n = $HOME."/x/y.z"
for m in [':~',':~:h',':~:t',':~:p',':p:~',':~:~',':.',':~:.',':.:~']
  echo string(fnamemodify(n, m)) == string(m) ? '' : substitute(string(fnamemodify(n, m)), escape($HOME, '\.'), 'HOMEDIR', 'g')
endfor
"---
let n = $HOME."x"
for m in [':~',':~:h',':~:t',':~:p',':p:~',':~:~',':.',':~:.',':.:~']
  echo string(fnamemodify(n, m)) == string(m) ? '' : substitute(string(fnamemodify(n, m)), escape($HOME, '\.'), 'HOMEDIR', 'g')
endfor
"---
let n = $HOME."/"
for m in [':~',':~:h',':~:t',':~:p',':p:~',':~:~',':.',':~:.',':.:~']
  echo string(fnamemodify(n, m)) == string(m) ? '' : substitute(string(fnamemodify(n, m)), escape($HOME, '\.'), 'HOMEDIR', 'g')
endfor
"---
let n = $HOME."/.."
for m in [':~',':~:h',':~:t',':~:p',':p:~',':~:~',':.',':~:.',':.:~']
  echo string(fnamemodify(n, m)) == string(m) ? '' : substitute(string(fnamemodify(n, m)), escape($HOME, '\.'), 'HOMEDIR', 'g')
endfor
"---
echo string(fnamemodify(1, ':t'))
echo string(fnamemodify('x', 1))
"---
echo string(fnamemodify(1.5, ':t'))
echo string(fnamemodify('x', 1.5))
"---
echo string(fnamemodify([1], ':t'))
echo string(fnamemodify('x', [1]))
"---
echo string(fnamemodify({}, ':t'))
echo string(fnamemodify('x', {}))
"---
echo string(fnamemodify(v:true, ':t'))
echo string(fnamemodify('x', v:true))
"---
echo string(fnamemodify(v:null, ':t'))
echo string(fnamemodify('x', v:null))
"---
echo string(fnamemodify(function("tr"), ':t'))
echo string(fnamemodify('x', function("tr")))
"---
echo string(fnamemodify("", ':t'))
echo string(fnamemodify('x', ""))

