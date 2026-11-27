echo execute('echo 1')
"---
echo string(execute('echo 1'))
"---
echo string(execute('echo 1', ''))
"---
echo string(execute('echo 1', 'silent'))
"---
echo string(execute('echo 1', 'silent!'))
"---
echo string(execute('echo 1', 'x'))
"---
echo string(execute('echo 1 | echo 2'))
"---
echo string(execute("echo 1\necho 2"))
"---
echo string(execute(['echo 1', 'echo 2']))
"---
echo string(execute([]))
"---
echo string(execute(''))
"---
echo string(execute('echon 1'))
"---
echo string(execute('echon 1 | echon 2'))
"---
echo string(execute('echo "a" | echon "b" | echo "c"'))
"---
echo string(execute('echo 1', 'silent!', 3))
"---
echo string(execute('foo'))
"---
echo string(execute('foo', 'silent'))
"---
echo string(execute('foo', 'silent!'))
"---
echo string(execute('echoerr "x"'))
"---
echo string(execute('echoerr "x"', 'silent!'))
"---
echo string(execute('echomsg "x"'))
"---
echo string(execute('echomsg "x"', ''))
"---
echo string(execute('let x = 1'))
"---
echo string(execute('let x = 1 | let y = 2'))
"---
echo string(execute('let x = 1 | echo x'))
"---
echo string(execute('echo 1', 5))
"---
echo string(execute('echo 1', []))
"---
echo string(execute('echo 1', {}))
"---
echo string(execute(5))
"---
echo string(execute(1.5))
"---
echo string(execute({}))
"---
echo string(execute(function('abs')))
"---
echo string(execute([1, 2]))
"---
echo string(execute(['let x = 1', 'echo x']))
"---
echo string(execute(['if 1', 'echo 1', 'endif']))
"---
echo string(execute(['if 0', 'echo 1', 'else', 'echo 2', 'endif']))
"---
echo string(execute(['for i in range(3)', 'echo i', 'endfor']))
"---
echo string(execute(['let i = 0', 'while i < 3', 'echo i', 'let i += 1', 'endwhile']))
"---
echo string(execute(['if 1', 'echo 1']))
"---
echo string(execute(['endif']))
"---
echo string(execute(['try', 'throw "x"', 'catch', 'echo "caught"', 'endtry']))
"---
try | echo string(execute('throw "x"')) | catch | echo v:exception | endtry
"---
try | echo string(execute('foo')) | catch | echo v:exception | endtry
"---
try | echo string(execute('foo', 'silent!')) | catch | echo v:exception | endtry
"---
echo string(execute('echo execute("echo 1")'))
"---
echo string(execute('echo string(execute("echo 1"))'))
"---
echo string(execute(['echo 1', 'echo execute("echo 2")', 'echo 3']))
"---
echo string(execute('echo 1', 'silent') . execute('echo 2'))
"---
echo string(execute('echo 1')) . string(execute('echo 2'))
"---
echo string(execute('silent echo 1'))
"---
echo string(execute('silent! foo'))
"---
echo string(execute('unsilent echo 1'))
"---
echo string(execute('unsilent echo 1', 'silent'))
"---
echo string(execute('echo 1', 'silent!foo'))
"---
echo string(execute('echo 1', 'SILENT'))
"---
echo string(execute('echo 1', ' '))
"---
echo string(execute('echo 1', 'silent '))
"---
echo string(execute('echo 1', 'silent!!'))
"---
echo string(execute("echo 1\n"))
"---
echo string(execute("\necho 1"))
"---
echo string(execute("echo 1\n\n\necho 2"))
"---
echo string(execute(['', 'echo 1', '']))
"---
echo string(execute('echo "a\nb"'))
"---
echo string(execute(['echo "a\nb"']))
"---
echo string(execute('echo "a" | echo "b\nc"'))
"---
echo string(execute('echo [1, 2]'))
"---
echo string(execute('echo {"a": 1}'))
"---
echo string(execute('echo 1.5'))
"---
echo string(execute('echo "é😀"'))
"---
echo string(execute('echo "' . repeat('x', 300) . '"'))
"---
echo string(execute('echo "' . repeat('x', 300) . '"', ''))
"---
echo string(execute('echo 1', ''))
"---
echo string(execute('echo 1', '')) . "|"
"---
echo 1 | echo string(execute('echo 2', '')) | echo 3
"---
echo 1 | echo string(execute('echo 2')) | echo 3
"---
echon 1 | echo string(execute('echo 2', '')) | echon 3
"---
echon 1 | echo string(execute('echo 2')) | echon 3
"---
echon 1 | echo string(execute('echon 2', '')) | echon 3
"---
echon 1 | echo string(execute('echon 2')) | echon 3
"---
echo 'a' | echo string(execute('echon 2', ''))
"---
echo 'a' | echon string(execute('echon 2', ''))
"---
echo 'a' | echon string(execute('echo 2', ''))
"---
echo 'a' | echon string(execute('echo 2', 'silent'))
"---
echo 1 | echo string(execute('foo', ''))
"---
echo 1 | echo string(execute('foo', 'silent'))
"---
echo 1 | echo string(execute('foo', 'silent!'))
"---
echo 1 | echo string(execute('foo')) | echo 3
"---
let g:x = execute('echo 1') | echo string(g:x)
"---
let g:x = execute('echo 1', '') | echo string(g:x)
"---
let g:x = execute(['echo 1', 'echo 2'], '') | echo string(g:x)
"---
let g:x = execute('echo 1') | echo len(g:x)
"---
echo type(execute('echo 1'))
"---
echo type(execute(5, 5))
"---
echo type(execute('echo 1', []))
"---
echo type(execute([], []))
"---
echo execute()
"---
echo execute(1, 2, 3)
"---
echo execute('echo 1', 'silent')
"---
echo "x" execute('echo 1') "y"
"---
echo 'echo 1'->execute()
"---
echo ['echo 1', 'echo 2']->execute()
"---
echo 'echo 1'->execute('')
"---
echo 'echo 1'->execute('silent!')
"---
echo 'echo 1'->execute('', 1)
"---
function F()
  echo 'in F'
endfunction
echo string(execute('call F()'))
"---
echo string(execute('call F()', ''))
"---
echo string(execute('call F()', 'silent'))
"---
function G()
  return execute('echo 5')
endfunction
echo string(G())
"---
function H()
  echo 1
  echo 2
endfunction
echo string(execute('call H()'))
"---
echo string(execute('function H'))
"---
echo string(execute('function'))
"---
echo string(execute('echo "x"', 'silent')) | echo 'done'
"---
silent echo string(execute('echo 1'))
"---
silent echo string(execute('echo 1', ''))
"---
silent! echo string(execute('foo'))
"---
echo string(execute('echo 1 | echo 2 | echo 3', 'silent'))
"---
call execute('echo 1') | echo 'z'
"---
call execute('echo 1', '') | echo 'z'
"---
call execute('echo 1', '') | echo 'z' | echo 'y'
"---
call execute('echoerr "boom"', '') | echo 'z'
"---
call execute('echoerr "boom"') | echo 'z'
"---
call execute('echoerr "boom"', 'silent') | echo 'z'
"---
call execute('echoerr "boom"', 'silent!') | echo 'z'
"---
echo string(execute('echoerr "boom"', 'silent!')) | echo v:errmsg
"---
echo string(execute('echoerr "boom"', 'silent')) | echo v:errmsg
"---
let v:errmsg = '' | call execute('foo', 'silent!') | echo v:errmsg
"---
echo string(execute('echo 1 | foo | echo 2', 'silent!'))
"---
echo string(execute(['echo 1', 'foo', 'echo 2'], 'silent!'))
"---
echo string(execute(['echo 1', 'foo', 'echo 2'], ''))
"---
let g:l = ['echo 1', 'echo 2', 'echo 3'] | echo string(execute(g:l)) | echo string(g:l)
"---
let g:l = ['let g:l = []', 'echo 2', 'echo 3'] | echo string(execute(g:l)) | echo string(g:l)
"---
let g:l = ['call add(g:l, "echo 9")', 'echo 2'] | echo string(execute(g:l)) | echo string(g:l)
"---
let g:l = ['call remove(g:l, 0)', 'echo 2', 'echo 3'] | echo string(execute(g:l)) | echo string(g:l)
"---
let g:n = 0 | let g:l = ['let g:n += 1', 'call execute(g:l)'] | echo string(execute(g:l)) | echo g:n
"---
echo string(execute(['let g:n = 0', 'while g:n < 3', 'let g:n += 1', 'echo g:n', 'endwhile']))
"---
echo string(execute(['function! Z()', 'echo "zz"', 'endfunction', 'call Z()']))
"---
echo string(execute(['let x =<< END', 'a', 'b', 'END', 'echo x']))
"---
echo string(execute('let x =<< END'))
"---
echo string(execute('execute "echo 1"'))
"---
echo string(execute('execute "echo 1" | echo 2'))
"---
echo string(execute('echo 1 | echo execute("echo 2", "") | echo 3'))
"---
echo string(execute('echo 1', 'silent') . 'x')
"---
echo string(execute('normal ix'))
"---
echo string(execute('set shortmess?'))
"---
echo string(execute('echo &shortmess'))
"---
echo string(execute('echo "' . repeat('é', 100) . '"'))
"---
echo string(execute('echo "a" | echon "b"'))
"---
echo string(execute('echon "a" | echo "b"'))
"---
echo string(execute('echon "a"', ''))
"---
echo string(execute('echon "a" | echon "b"', ''))
"---
echo string(execute('echo "a"', '') . execute('echo "b"', ''))
"---
echo string(execute('echo "a"', '') . execute('echon "b"', ''))
"---
echo len(execute('echo 1'))
"---
echo execute('echo 1') == "\n1"
"---
echo execute('echo 1') is# "\n1"
"---
echo execute('') == ''
"---
echo execute([]) == ''
"---
echo empty(execute('echo 1'))
"---
echo empty(execute('let x = 1'))

"---
echo string(execute(['echo 1', {}]))
"---
echo string(execute(['echo 1', [], 'echo 2']))
"---
echo string(execute(['echo 1', function('abs')]))
"---
echo string(execute(['echo 1', 'throw "x"', 'echo 2']))
"---
echo string(execute('let g:aa = 1 | let g:bb = 2 | let g:'))
"---
echo string(execute('echo 1 | foo | echo 2'))
"---
echo string(execute('echo 1 | foo | echo 2', 'silent'))
"---
echo string(execute(['echo 1', 'foo', 'echo 2']))
"---
echo string(execute(['echo 1', 'foo', 'echo 2'], 'silent'))
"---
echo string(execute(['echo 1', 'source /nonexistent']))
"---
echo string(execute("echo 'a'\techo 'b'"))
"---
echo string(execute(['echo 1', 'foo']))
