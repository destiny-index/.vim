augroup ftplugin_typescript
  autocmd!
  " Remove trailing whitespace
  autocmd BufWritePre <buffer> %s/\s\+$//e
  " Convert CR to LF
  autocmd BufWritePre <buffer> %s/\r/\r/e
augroup END

nnoremap gd :ALEGoToDefinition<CR>
