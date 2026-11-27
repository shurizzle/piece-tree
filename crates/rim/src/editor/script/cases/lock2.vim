let l = [3, 1, 2]
lockvar l
call add(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call add(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call add(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call add(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call add(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call add(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar l
call insert(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call insert(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call insert(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call insert(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call insert(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call insert(l, 4)
echo l
"---
let l = [3, 1, 2]
lockvar l
call insert(l, 4, 1)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call insert(l, 4, 1)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call insert(l, 4, 1)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call insert(l, 4, 1)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call insert(l, 4, 1)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call insert(l, 4, 1)
echo l
"---
let l = [3, 1, 2]
lockvar l
call remove(l, 0)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call remove(l, 0)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call remove(l, 0)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call remove(l, 0)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call remove(l, 0)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call remove(l, 0)
echo l
"---
let l = [3, 1, 2]
lockvar l
call remove(l, 0, 1)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call remove(l, 0, 1)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call remove(l, 0, 1)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call remove(l, 0, 1)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call remove(l, 0, 1)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call remove(l, 0, 1)
echo l
"---
let l = [3, 1, 2]
lockvar l
call extend(l, [4])
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call extend(l, [4])
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call extend(l, [4])
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call extend(l, [4])
echo l
"---
let l = [3, 1, 2]
lockvar! l
call extend(l, [4])
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call extend(l, [4])
echo l
"---
let l = [3, 1, 2]
lockvar l
call extend(l, [4], 0)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call extend(l, [4], 0)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call extend(l, [4], 0)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call extend(l, [4], 0)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call extend(l, [4], 0)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call extend(l, [4], 0)
echo l
"---
let l = [3, 1, 2]
lockvar l
call sort(l)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call sort(l)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call sort(l)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call sort(l)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call sort(l)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call sort(l)
echo l
"---
let l = [3, 1, 2]
lockvar l
call uniq(l)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call uniq(l)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call uniq(l)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call uniq(l)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call uniq(l)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call uniq(l)
echo l
"---
let l = [3, 1, 2]
lockvar l
call reverse(l)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call reverse(l)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call reverse(l)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call reverse(l)
echo l
"---
let l = [3, 1, 2]
lockvar! l
call reverse(l)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call reverse(l)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call flatten(l)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call flatten(l)
echo l
"---
let l = [3, 1, 2]
lockvar l
call filter(l, 'v:val > 1')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call filter(l, 'v:val > 1')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call filter(l, 'v:val > 1')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call filter(l, 'v:val > 1')
echo l
"---
let l = [3, 1, 2]
lockvar! l
call filter(l, 'v:val > 1')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call filter(l, 'v:val > 1')
echo l
"---
let l = [3, 1, 2]
lockvar l
call map(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call map(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call map(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call map(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar! l
call map(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call map(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar l
call foreach(l, 'echo v:val')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call foreach(l, 'echo v:val')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call foreach(l, 'echo v:val')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call foreach(l, 'echo v:val')
echo l
"---
let l = [3, 1, 2]
lockvar! l
call foreach(l, 'echo v:val')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call foreach(l, 'echo v:val')
echo l
"---
let l = [3, 1, 2]
lockvar l
echo mapnew(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
echo mapnew(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
echo mapnew(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
echo mapnew(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar! l
echo mapnew(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
echo mapnew(l, 'v:val + 1')
echo l
"---
let l = [3, 1, 2]
lockvar l
echo copy(l)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
echo copy(l)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
echo copy(l)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
echo copy(l)
echo l
"---
let l = [3, 1, 2]
lockvar! l
echo copy(l)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
echo copy(l)
echo l
"---
let l = [3, 1, 2]
lockvar l
echo deepcopy(l)
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
echo deepcopy(l)
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
echo deepcopy(l)
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
echo deepcopy(l)
echo l
"---
let l = [3, 1, 2]
lockvar! l
echo deepcopy(l)
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
echo deepcopy(l)
echo l
"---
let l = [3, 1, 2]
lockvar l
echo l + [4]
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
echo l + [4]
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
echo l + [4]
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
echo l + [4]
echo l
"---
let l = [3, 1, 2]
lockvar! l
echo l + [4]
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
echo l + [4]
echo l
"---
let l = [3, 1, 2]
lockvar l
echo sort(copy(l))
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
echo sort(copy(l))
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
echo sort(copy(l))
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
echo sort(copy(l))
echo l
"---
let l = [3, 1, 2]
lockvar! l
echo sort(copy(l))
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
echo sort(copy(l))
echo l
"---
let l = [3, 1, 2]
lockvar l
call filter(l, 'v:val > 5')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call filter(l, 'v:val > 5')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call filter(l, 'v:val > 5')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call filter(l, 'v:val > 5')
echo l
"---
let l = [3, 1, 2]
lockvar! l
call filter(l, 'v:val > 5')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call filter(l, 'v:val > 5')
echo l
"---
let l = [3, 1, 2]
lockvar l
call filter(l, 'v:val >= 0')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call filter(l, 'v:val >= 0')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call filter(l, 'v:val >= 0')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call filter(l, 'v:val >= 0')
echo l
"---
let l = [3, 1, 2]
lockvar! l
call filter(l, 'v:val >= 0')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call filter(l, 'v:val >= 0')
echo l
"---
let l = [3, 1, 2]
lockvar l
call map(l, 'v:val')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call map(l, 'v:val')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call map(l, 'v:val')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call map(l, 'v:val')
echo l
"---
let l = [3, 1, 2]
lockvar! l
call map(l, 'v:val')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call map(l, 'v:val')
echo l
"---
let l = [3, 1, 2]
lockvar l
echo sort(l, 'n')
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
echo sort(l, 'n')
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
echo sort(l, 'n')
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
echo sort(l, 'n')
echo l
"---
let l = [3, 1, 2]
lockvar! l
echo sort(l, 'n')
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
echo sort(l, 'n')
echo l
"---
let l = [3, 1, 2]
lockvar l
call sort(l, {a, b -> a - b})
echo l
"---
let l = [3, 1, 2]
lockvar 1 l
call sort(l, {a, b -> a - b})
echo l
"---
let l = [3, 1, 2]
lockvar 0 l
call sort(l, {a, b -> a - b})
echo l
"---
let l = [3, 1, 2]
lockvar l[0]
call sort(l, {a, b -> a - b})
echo l
"---
let l = [3, 1, 2]
lockvar! l
call sort(l, {a, b -> a - b})
echo l
"---
let l = [3, 1, 2]
lockvar 2 l
call sort(l, {a, b -> a - b})
echo l
"---
let d = {'a': 1, 'b': 2}
lockvar d
call remove(d, 'a')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call remove(d, 'a')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call remove(d, 'a')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d.a
call remove(d, 'a')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call remove(d, 'a')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call remove(d, 'a')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
call remove(d, 'a')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call extend(d, {'c': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call extend(d, {'c': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call extend(d, {'c': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call extend(d, {'c': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call extend(d, {'c': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call extend(d, {'a': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call extend(d, {'a': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call extend(d, {'a': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call extend(d, {'a': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call extend(d, {'a': 3})
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call extend(d, {'a': 3}, 'keep')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call extend(d, {'a': 3}, 'keep')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call extend(d, {'a': 3}, 'keep')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call extend(d, {'a': 3}, 'keep')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call extend(d, {'a': 3}, 'keep')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call extend(d, {'a': 3}, 'error')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call extend(d, {'a': 3}, 'error')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call extend(d, {'a': 3}, 'error')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call extend(d, {'a': 3}, 'error')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call extend(d, {'a': 3}, 'error')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call filter(d, 'v:val > 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call filter(d, 'v:val > 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call filter(d, 'v:val > 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call filter(d, 'v:val > 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call filter(d, 'v:val > 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call map(d, 'v:val + 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call map(d, 'v:val + 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call map(d, 'v:val + 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call map(d, 'v:val + 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call map(d, 'v:val + 1')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
echo mapnew(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
echo mapnew(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
echo mapnew(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d.a
echo mapnew(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
echo mapnew(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo mapnew(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
echo mapnew(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call filter(d, 'v:val > 5')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call filter(d, 'v:val > 5')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call filter(d, 'v:val > 5')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call filter(d, 'v:val > 5')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call filter(d, 'v:val > 5')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call map(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call map(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call map(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call map(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call map(d, 'v:val')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d
call remove(d, 'zz')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 1 d
call remove(d, 'zz')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 0 d
call remove(d, 'zz')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d.a
call remove(d, 'zz')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar! d
call remove(d, 'zz')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar 2 d
call remove(d, 'zz')
echo d
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
call remove(d, 'zz')
echo d
"---
let l = [1, 2, 3]
call filter(l, 'add(l, 1)')
echo l
"---
let l = [1, 2, 3]
call map(l, 'add(l, 1)')
echo l
"---
let l = [1, 2, 3]
call map(l, 'remove(l, 0)')
echo l
"---
let l = [1, 2, 3]
call filter(l, 'insert(l, 0)')
echo l
"---
let l = [1, 2, 3]
call filter(l, {-> add(l, 1)})
echo l
"---
let l = [1, 2, 3]
call foreach(l, 'call add(l, 1)')
echo l
"---
let l = [1, 2, 3]
call map(l, 'sort(l)')
echo l
"---
let l = [1, 2, 3]
echo map(l, 'islocked("l")')
"---
let l = [1, 2, 3]
call map(l, 'execute("let l[0] = 5")')
echo l
"---
let l = [1, 2, 3]
call map(l, 'execute("let l = 5")')
echo l
"---
let l = [1, 2, 3]
call map(l, 'execute("unlet l[0]")')
echo l
"---
let l = [1, 2, 3]
call map(l, 'execute("let l += [4]")')
echo l
"---
let d = {'a': 1}
call map(d, 'extend(d, {"b": 2})')
echo d
"---
let d = {'a': 1}
call map(d, 'remove(d, "a")')
echo d
"---
let d = {'a': 1}
call filter(d, 'extend(d, {"b": 2})')
echo d
"---
let d = {'a': 1}
call map(d, 'execute("let d.b = 1")')
echo d
"---
let d = {'a': 1}
call map(d, 'execute("let d.a = 5")')
echo d
"---
let d = {'a': 1}
call map(d, 'execute("unlet d.a")')
echo d
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l[1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l[0:1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('d.a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('d.b')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('d.n')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('d')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('x y')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('1x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('nosuch')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked(1)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('v:count')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('g:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l[5]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l[-1]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('d.')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('d["a"]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('x[0]')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l:x')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('$HOME')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('@a')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('&tw')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked(' l')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked('l[0] ')
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked([])
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked({})
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked(1.5)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}

echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar x
echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l
echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 1 l
echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar l[0]
echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d
echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar d.a
echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar! d
echo islocked(v:null)
"---
let x = 1
let l = [1, 2]
let d = {'a': 1, 'b': 2}
lockvar 2 d
echo islocked(v:null)
"---
lockvar v:count
echo 1
"---
unlockvar v:count
echo 1
"---
lockvar! v:count
echo 1
"---
lockvar 1 v:count
echo 1
"---
unlet v:count
echo 1
"---
let v:count = 1
echo 1
"---
let v:count .= 'x'
echo 1
"---
echo islocked('v:count')
echo 1
"---
lockvar v:errmsg
echo 1
"---
unlockvar v:errmsg
echo 1
"---
lockvar! v:errmsg
echo 1
"---
lockvar 1 v:errmsg
echo 1
"---
unlet v:errmsg
echo 1
"---
let v:errmsg = 1
echo 1
"---
let v:errmsg .= 'x'
echo 1
"---
echo islocked('v:errmsg')
echo 1
"---
lockvar v:version
echo 1
"---
unlockvar v:version
echo 1
"---
lockvar! v:version
echo 1
"---
lockvar 1 v:version
echo 1
"---
unlet v:version
echo 1
"---
let v:version = 1
echo 1
"---
let v:version .= 'x'
echo 1
"---
echo islocked('v:version')
echo 1
"---
lockvar v:true
echo 1
"---
unlockvar v:true
echo 1
"---
lockvar! v:true
echo 1
"---
lockvar 1 v:true
echo 1
"---
unlet v:true
echo 1
"---
let v:true = 1
echo 1
"---
let v:true .= 'x'
echo 1
"---
echo islocked('v:true')
echo 1
"---
lockvar v:null
echo 1
"---
unlockvar v:null
echo 1
"---
lockvar! v:null
echo 1
"---
lockvar 1 v:null
echo 1
"---
unlet v:null
echo 1
"---
let v:null = 1
echo 1
"---
let v:null .= 'x'
echo 1
"---
echo islocked('v:null')
echo 1
"---
lockvar v:argv
echo 1
"---
unlockvar v:argv
echo 1
"---
lockvar! v:argv
echo 1
"---
lockvar 1 v:argv
echo 1
"---
unlet v:argv
echo 1
"---
let v:argv = 1
echo 1
"---
let v:argv .= 'x'
echo 1
"---
echo islocked('v:argv')
echo 1
"---
lockvar v:event
echo 1
"---
unlockvar v:event
echo 1
"---
lockvar! v:event
echo 1
"---
lockvar 1 v:event
echo 1
"---
unlet v:event
echo 1
"---
let v:event = 1
echo 1
"---
let v:event .= 'x'
echo 1
"---
echo islocked('v:event')
echo 1
"---
lockvar v:exception
echo 1
"---
unlockvar v:exception
echo 1
"---
lockvar! v:exception
echo 1
"---
lockvar 1 v:exception
echo 1
"---
unlet v:exception
echo 1
"---
let v:exception = 1
echo 1
"---
let v:exception .= 'x'
echo 1
"---
echo islocked('v:exception')
echo 1
"---
lockvar v:statusmsg
echo 1
"---
unlockvar v:statusmsg
echo 1
"---
lockvar! v:statusmsg
echo 1
"---
lockvar 1 v:statusmsg
echo 1
"---
unlet v:statusmsg
echo 1
"---
let v:statusmsg = 1
echo 1
"---
let v:statusmsg .= 'x'
echo 1
"---
echo islocked('v:statusmsg')
echo 1
"---
lockvar v:key
echo 1
"---
unlockvar v:key
echo 1
"---
lockvar! v:key
echo 1
"---
lockvar 1 v:key
echo 1
"---
unlet v:key
echo 1
"---
let v:key = 1
echo 1
"---
let v:key .= 'x'
echo 1
"---
echo islocked('v:key')
echo 1
"---
let v:argv[0] = 'x'
echo 1
"---
call add(v:argv, 'x')
echo 1
"---
unlet v:argv[0]
echo 1
"---
let v:errmsg = 'a'
lockvar v:errmsg
let v:errmsg = 'b'
echo v:errmsg
"---
function! F(a, ...)
echo islocked('a:a') islocked('a:000') islocked('a:1') islocked('a:0') islocked('a:firstline')
endfunction
call F(1, 2)
"---
function! F(a, ...)
let a:000 = 1
endfunction
call F(1, 2)
"---
function! F(a, ...)
let a:1 = 1
endfunction
call F(1, 2)
"---
function! F(a, ...)
let a:a[0] = 1
endfunction
call F([1], 2)
"---
function! F(a, ...)
call add(a:a, 1)
endfunction
call F([1], 2)
"---
function! F(a, ...)
unlockvar a:a
endfunction
call F([1], 2)
"---
function! F(a, ...)
lockvar a:000
endfunction
call F([1], 2)
"---
function! F(a, ...)
unlockvar a:000
endfunction
call F([1], 2)
"---
function! F(a, ...)
lockvar! a:a
endfunction
call F([1], 2)
"---
function! F(a, ...)
unlockvar! a:a
endfunction
call F([1], 2)
"---
function! F(a, ...)
let a:a += [2]
endfunction
call F([1], 2)
"---
function! F(a, ...)
let a:000 += [2]
endfunction
call F([1], 2)
"---
function! F(a, ...)
let a:000[0] = 2
endfunction
call F([1], 2)
"---
function! F(a, ...)
call extend(a:000, [1])
endfunction
call F([1], 2)
"---
function! F(a, ...)
call sort(a:000)
endfunction
call F([1], 2, 3)
"---
function! F(a, ...)
call remove(a:000, 0)
endfunction
call F([1], 2, 3)
"---
function! F(a, ...)
call map(a:000, 'v:val')
endfunction
call F([1], 2, 3)
"---
function! F(a, ...)
unlet a:000[0]
endfunction
call F([1], 2, 3)
"---
let d = {}
function d.f() dict
lockvar self
let self.a = 1
endfunction
call d.f()
echo d
"---
let d = {}
function d.f() dict
let self.a = 1
endfunction
lockvar d
call d.f()
echo d
"---
let d = {}
function d.f() dict
echo islocked('self') islocked('self.a')
endfunction
lockvar d
call d.f()
"---
let d = {}
function d.f() dict
unlet self
endfunction
call d.f()
"---
let d = {'f': 1}
lockvar d.f
function! d.f() dict
endfunction
echo d
"---
let d = {'f': 1}
lockvar d.f
unlockvar d.f
function! d.f() dict
endfunction
echo d.f
"---
let d = {'f': 1}
lockvar d
unlockvar d
function! d.f() dict
endfunction
"---
let d = {'f': 1}
lockvar d
function! d.g() dict
endfunction
"---
let d = {'f': 1}
lockvar 1 d
function! d.g() dict
endfunction
"---
let d = {'f': 1}
lockvar 1 d
function! d.f() dict
endfunction
"---
let d = {'f': 1}
lockvar 2 d
function! d.f() dict
endfunction
"---
let d = {'f': 1}
lockvar d
delfunction d.f
"---
let d = {'f': 1}
lockvar d.f
delfunction d.f
"---
let g:l = [1]
lockvar g:l
let g:l[0] = 2
echo g:l
"---
let g:l = [1]
lockvar g:l
call add(g:l, 2)
"---
let g:l = [1]
lockvar g:l
unlet g:l
"---
let g:l = [1]
lockvar g:l
unlet! g:l
echo exists('g:l')
"---
let g:l = [1]
lockvar g:
let g:l = 3
let g:n = 1
echo g:l
"---
let g:l = [1]
lockvar! g:
let g:l = 3
"---
let g:l = [1]
lockvar 1 g:
let g:l = 3
let g:n = 1
echo g:l
"---
let g:l = [1]
lockvar 2 g:
let g:l = 3
"---
let g:l = [1]
let g:l[0] = 5
lockvar! g:
let g:l[0] = 6
"---
let l = [1]
lockvar 1 g:
let l = [2]
echo l
"---
let s:x = 1
lockvar s:x
let s:x = 2
"---
let s:x = 1
lockvar s:x
unlet s:x
"---
let s:x = [1]
lockvar s:x
call add(s:x, 2)
"---
let b:l = [1]
lockvar b:
let b:l = 2
"---
let b:l = [1]
lockvar! b:
let b:l = 2
"---
let w:l = [1]
lockvar w:
let w:n = 2
echo w:n
"---
let t:l = [1]
lockvar! t:
let t:l = 2
"---
let l = [1]
lockvar l
let l[0:0] = [2]
"---
let l = [1]
lockvar 0 l[0]
let l[0] = 2
echo l
"---
let l = [1, 2, 3]
lockvar l[1]
let l[0:2] = [4, 5, 6]
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[0:1] = [4, 5]
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[0:1] = [4, 5, 6]
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[0:] = [4, 5]
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[1:] = [4]
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[1:] += [4]
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[2] += 1
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[2] .= 1
echo l
"---
let l = [1, 2, 3]
lockvar l[2]
let l[2] -= 1
echo l
"---
let l = [1, 2, 3]
lockvar l[-1]
unlet l[-1]
echo l
"---
let l = [1, 2, 3]
lockvar l[-1]
unlet l[2]
echo l
"---
let l = [1, 2, 3]
lockvar l[1]
unlet l[1]
echo l
"---
let l = [[1], 2]
lockvar l[0]
let l[0][0] = 5
echo l
"---
let l = [[1], 2]
lockvar 2 l[0]
let l[0][0] = 5
echo l
"---
let l = [[1], 2]
lockvar 2 l[0]
let l[0] = 5
echo l
"---
let l = [[1], 2]
lockvar 2 l[0]
call add(l[0], 5)
echo l
"---
let l = [[1], 2]
lockvar l[0]
call add(l[0], 5)
echo l
"---
let d = {'a': [1]}
lockvar d.a
let d.a[0] = 5
echo d
"---
let d = {'a': [1]}
lockvar 2 d.a
let d.a[0] = 5
echo d
"---
let d = {'a': [1]}
lockvar 2 d.a
call add(d.a, 5)
echo d
"---
let d = {'a': [1]}
lockvar 2 d.a
let d.a = 5
echo d
"---
let d = {'a': {'b': 1}}
lockvar d.a
let d.a.b = 5
echo d
"---
let d = {'a': {'b': 1}}
lockvar 2 d.a
let d.a.b = 5
echo d
"---
let d = {'a': {'b': 1}}
lockvar 2 d.a
let d.a.c = 5
echo d
"---
let d = {'a': {'b': 1}}
lockvar 2 d.a
unlet d.a.b
echo d
"---
let d = {'a': {'b': 1}}
lockvar 2 d.a
unlet d.a
echo d
"---
let d = {'a': {'b': 1}}
lockvar d
unlockvar d
unlockvar d.a
let d.a.b = 5
echo d
"---
let l = [1]
call add(l, l)
lockvar l
echo islocked('l')
"---
let l = [1]
call add(l, l)
lockvar! l
echo islocked('l') islocked('l[1]')
"---
let l = [1]
call add(l, l)
lockvar 5 l
echo islocked('l[1][1][1]')
"---
let d = {}
let d.s = d
lockvar! d
echo islocked('d')
"---
let l = [1]
call add(l, l)
unlockvar! l
echo islocked('l')
"---
let l = []
let i = 0
while i < 120 | let l = [l] | let i += 1 | endwhile
lockvar! l
echo islocked('l')
"---
let l = []
let i = 0
while i < 99 | let l = [l] | let i += 1 | endwhile
lockvar! l
echo islocked('l')
"---
let l = []
let i = 0
while i < 101 | let l = [l] | let i += 1 | endwhile
lockvar 200 l
echo islocked('l')
"---
let l = [1]
let m = l
lockvar l
echo islocked('m')
call add(m, 2)
"---
let l = [1]
let m = [l, l]
lockvar! m
echo islocked('l')
call add(l, 2)
"---
let l = [1]
let m = [l, l]
lockvar 1 m
echo islocked('l')
"---
let l = [1]
let m = [l, l]
lockvar 2 m
echo islocked('l') islocked('m[0]') islocked('m[1]')
"---
let l = [1]
lockvar! l
let m = copy(l)
call add(m, 2)
echo m
"---
let l = [1]
lockvar! l
let m = deepcopy(l)
let m[0] = 2
echo m islocked('m') islocked('m[0]')
"---
let l = [1]
lockvar! l
let m = l
let m[0] = 2
"---
let l = [1]
lockvar l[0]
let m = l[0]
let m = 2
echo m
"---
let l = [1]
lockvar l[0]
let m = l
let m[0] = 2
"---
let l = [1]
lockvar l[0]
let m = copy(l)
let m[0] = 2
echo m
"---
let l = [1]
lockvar l[0]
let m = l + []
let m[0] = 2
echo m
"---
let l = [1]
lockvar l[0]
let m = [l[0]]
let m[0] = 2
echo m
"---
let l = [1]
lockvar l[0]
let m = {'a': l}
let m.a[0] = 2
echo m
"---
let l = [1]
lockvar l[0]
for i in l | let i = 3 | endfor
echo l
"---
let l = [[1]]
lockvar l
for i in l | let i[0] = 3 | endfor
echo l
"---
lockvar x
lockvar y
echo 1
"---
try | lockvar x | catch | echo v:exception | endtry
"---
let x = 1
try | lockvar x | let x = 2 | catch | echo v:exception | endtry
"---
let x = 1
lockvar x
try | let x = 2 | catch | echo v:exception | endtry
"---
let x = 1
lockvar x
try | unlet x | catch | echo v:exception | endtry
"---
let l = [1]
lockvar l
silent! call add(l, 2)
echo l
"---
let l = [1]
lockvar l
silent! let l = 2
echo l
"---
let l = [1]
lockvar l
let r = add(l, 2)
echo r
"---
let l = [1]
lockvar l
echo add(l, 2)
"---
let l = [1]
lockvar l
let r = extend(l, [2])
echo r
"---
let l = [1]
lockvar l
let r = sort(l)
echo r
"---
let l = [1, 2]
lockvar l
let r = reverse(l)
echo r
"---
let l = [1, 2]
lockvar l
let r = remove(l, 0)
echo r
"---
let l = [1, 2]
lockvar l
let r = insert(l, 0)
echo r
"---
let l = [1, 2]
lockvar l
let r = filter(l, 1)
echo r
"---
let l = [1, 2]
lockvar l
let r = map(l, 1)
echo r
"---
let l = [1, 2]
lockvar l[0]
let r = map(l, 1)
echo r
"---
let l = [1, 2]
lockvar l[1]
let r = map(l, 1)
echo r
"---
let d = {'a': 1}
lockvar d.a
let r = map(d, 1)
echo r
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
let r = map(d, 1)
echo r
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
let r = filter(d, 0)
echo r
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
let r = filter(d, 1)
echo r
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
let r = remove(d, 'b')
echo r
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
let r = extend(d, {'b': 3})
echo r
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
let r = extend(d, {'b': 3}, 'keep')
echo r
"---
let d = {'a': 1, 'b': 2}
lockvar d.b
let r = extend(d, {'a': 3, 'c': 3})
echo r
