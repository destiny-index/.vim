function! whitespace#removetrailing()
  if exists('b:keepwhitespace')
    return
  endif

  " Remove trailing whitespace
  execute ':%s/\s\+$//e'
  " Convert CR to LF
  execute ':%s/\r/\r/e'
endfunction
