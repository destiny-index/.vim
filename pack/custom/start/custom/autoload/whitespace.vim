function! RemoveTrailingWhitespace()
  " Remove trailing whitespace
  normal! ":%s/\s\+$//e"
  " Convert CR to LF
  normal! ":%s/\r/\r/e"
endfunction
