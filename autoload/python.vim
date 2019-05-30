function! python#run_test()
  let path = s:convert_path_to_module(python#toggle_unittest_path())
  execute '!eval $(cat .env || echo "") python -m unittest' path
endfunction

function! python#toggle_unittest_path()
  if s:is_unittest()
    return s:script_path()
  endif
  return s:unittest_path()
endfunction

function! s:is_unittest()
  return expand('%:t') =~# 'test_.*'
endfunction

function! s:script_path()
  return expand('%:~:.:h') . '/' . substitute(expand('%:t'), 'test_', '', '')
endfunction

function! s:unittest_path()
  return expand('%:~:.:h') . '/' . 'test_' . expand('%:t')
endfunction

function! s:convert_path_to_module(path)
  return substitute(s:strip_py_extension(a:path), '/', '.', 'g')
endfunction

function! s:strip_py_extension(path)
  return substitute(a:path, '\.py$', '', '')
endfunction
