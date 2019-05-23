function! python#unittest_path()
  if s:is_unittest()
    return expand('%:h') . '/' . substitute(expand('%:t'), 'test_', '', '')
  endif

  return expand('%:h') . '/' . 'test_' . expand('%:t')
endfunction

function! python#run_test()
  if s:is_unittest()
    execute '!python -m unittest' s:path_to_module()
  endif
endfunction

function! s:is_unittest()
  return expand('%:t') =~# 'test_.*'
endfunction

function! s:path_to_module()
  return substitute(expand('%:r'), '/', '.', '')
endfunction
