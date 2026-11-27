let d = {'n': 5}
function d.get()
  return self.n
endfunction
echo d.get()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
echo d
echo string(d.get)
"---
let d = {'n': 5}
function d.get() dict
  return self.n
endfunction
echo d.get()
"---
let d = {'n': 5}
function! d.get()
  return self.n
endfunction
echo d.get()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
function d.get()
  return 2
endfunction
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
function! d.get()
  return self.n * 2
endfunction
echo d.get()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
let F = d.get
echo F() string(F)
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
let F = d.get
let d.n = 9
echo F()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
let e = {'n': 7, 'get': d.get}
echo e.get() d.get()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
let e = copy(d)
let e.n = 6
echo e.get() d.get()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
let e = deepcopy(d)
let e.n = 6
echo e.get() d.get()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
echo call(d.get, [], {'n': 'other'})
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
echo call(d.get, [])
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
echo function(d.get, {'n': 3})()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
echo function(d.get, [])()
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
let F = function(d.get, {'n': 'bound'})
echo F()
"---
let d = {'n': 5}
function d.add(x)
  let self.n += a:x
  return self.n
endfunction
echo d.add(1) d.add(2) d.n
"---
let d = {'n': 5}
function d.add(...)
  return a:000
endfunction
echo d.add(1, 2)
"---
let d = {'n': 5}
function d.me()
  return self
endfunction
echo d.me() d.me() is d
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
function

"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
function d.get
"---
let d = {'n': 5}
function d.get()
  return self.n
endfunction
function! d.get
"---
let d = {'n': 5}
function d.get
"---
let d = {'n': 5}
function d.nokey
"---
let d = {'n': 5}
function d.nokey(
"---
let d = {'n': 5}
function d.n()
endfunction
"---
let d = {'n': 5}
function d.n(x) abort range
endfunction
function d.n
"---
let d = {'n': 5}
function d.get()
endfunction
delfunction d.get
echo d
"---
let d = {'n': 5}
function d.get()
endfunction
delfunction d.get
echo exists('*d.get')
"---
let d = {'n': 5}
delfunction d.n
"---
let d = {'n': 5}
delfunction d.nokey
"---
let d = {'n': 5}
delfunction! d.nokey
"---
let d = {'n': 5}
function d.get()
  return 1
endfunction
let F = d.get
delfunction d.get
echo F()
"---
let g:gd = {}
function g:gd.f()
  return 'g'
endfunction
echo g:gd.f()
"---
function g:.f()
endfunction
"---
function g:f()
endfunction
"---
let l = [function('abs')]
function l[0]()
endfunction
"---
function Nodict.f()
endfunction
"---
let s = 'str'
function s.f()
endfunction
"---
let d = {}
function d[1]()
endfunction
"---
let d = {'a': {}}
function d.a.f()
  return 'nested'
endfunction
echo d.a.f()
"---
let d = {'a': {'n': 1}}
function d.a.f()
  return self.n
endfunction
echo d.a.f()
"---
let d = {}
function d.f()
  return 1
endfunction
function d.g()
  return self.f() + 1
endfunction
echo d.g()
"---
let d = {}
function d.f()
  return 1
endfunction
function d.g()
  return call(self.f, [], self) + 1
endfunction
echo d.g()
"---
let d = {'f': function('abs')}
echo d.f(-1)
let d2 = {'f': function('abs', [-5])}
echo d2.f()
"---
function! Plain()
  return 'plain'
endfunction
let d = {'p': function('Plain')}
echo d.p()
"---
function! WithSelf() dict
  return get(self, 'v', 'none')
endfunction
let d = {'v': 'val', 'f': function('WithSelf')}
echo d.f() string(d.f)
echo WithSelf()
"---
function! WithSelf() dict
  return self
endfunction
let d = {'v': 'val', 'f': function('WithSelf')}
let F = d.f
echo F()
let d.v = 'changed'
echo F()
"---
function! WithSelf() dict
  return get(self, 'v', 'none')
endfunction
let d = {'v': 1}
let d.f = function('WithSelf')
let e = {'v': 2, 'f': d.f}
echo d.f() e.f()
"---
function! WithSelf() dict
  return get(self, 'v', 'none')
endfunction
let d = {'v': 1}
let d.f = function('WithSelf', {'v': 'explicit'})
echo d.f()
let e = {'v': 2, 'f': d.f}
echo e.f()
"---
function! WithSelf(x) dict
  return [self.v, a:x]
endfunction
let d = {'v': 1}
let d.f = function('WithSelf', ['a'])
echo d.f()
"---
function! WithSelf(x) dict
  return [self.v, a:x]
endfunction
let d = {'v': 1, 'l': [function('WithSelf', ['z'])]}
echo d.l[0]()
"---
function! WithSelf() dict
  return self
endfunction
let d = {'v': 1, 'f': function('WithSelf')}
echo d['f']() d.f() (d.f)()
"---
function! WithSelf() dict
  return get(self, 'v', 'none')
endfunction
let d = {'v': 1}
let d.f = function('WithSelf')
echo d.f()
let F = d.f
let d2 = {'v': 2}
echo call(F, [], d2)
"---
function! WithSelf() dict
  return self.v
endfunction
echo call('WithSelf', [], {'v': 'by name'})
"---
function! WithSelf() dict
  return self.v
endfunction
echo call('WithSelf', [])
"---
function! WithSelf() dict
  return self.v
endfunction
call WithSelf()
"---
function! WithSelf() dict
  return self.v
endfunction
let d = {'f': function('WithSelf')}
call d.f()
"---
function! WithSelf() dict
  return self.v
endfunction
let d = {'v': 'ok', 'f': function('WithSelf')}
call d.f()
echo d.f()
"---
function! Cmp(a, b) dict
  return self.dir * (a:a - a:b)
endfunction
let o = {'dir': -1, 'cmp': function('Cmp')}
echo sort([3, 1, 2], o.cmp)
"---
let d = {'v': 3}
function d.double(k, val)
  return a:val * self.v
endfunction
echo map([1, 2], d.double)
"---
let d = {'v': 3}
function d.double(k, val)
  return a:val * self.v
endfunction
echo map({'a': 1}, d.double)
"---
let d = {'v': 3}
function d.keep(k, val)
  return a:val > self.v
endfunction
echo filter([1, 5, 2, 7], d.keep)
"---
let Obj = {'count': 0}
function Obj.inc()
  let self.count += 1
  return self
endfunction
call Obj.inc().inc().inc()
echo Obj.count
"---
let d = {}
function d.f() closure
endfunction
"---
function! Foo()
  let d = {}
  function d.f() closure
    return 'closure'
  endfunction
  return d
endfunction
echo Foo().f()
"---
function! Foo()
  let x = 'captured'
  let d = {}
  function d.f() closure
    return x . self.y
  endfunction
  let d.y = '!'
  return d
endfunction
echo Foo().f()
"---
function! Foo()
  let d = {'y': 1}
  function d.f()
    return self.y
  endfunction
  return d
endfunction
echo Foo().f() Foo().f()
"---
let d = {'n': 1}
function d.f()
  echo nosuch
endfunction
call d.f()
"---
let d = {'n': 1}
function d.f()
  call self.g()
endfunction
function d.g()
  echo nosuch
endfunction
call d.f()
"---
let d = {}
function d.f()
  return 1
endfunction
function d.f2()
  return 2
endfunction
echo d.f() d.f2()
echo len(d)
"---
let d = {}
function d.f()
  return 1
endfunction
let d2 = {}
function d2.f()
  return 2
endfunction
echo d.f() d2.f()
echo string(d.f) string(d2.f)
