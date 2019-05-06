function! python#unittestpath()
  if s:isunittest()
    return expand('%:h') . '/' . substitute(expand('%:t'), 'test_', '', '')
  endif

  return expand('%:h') . '/' . 'test_' . expand('%:t')
endfunction

function! s:isunittest()
  return expand('%:t') =~# 'test_.*'
endfunction
