augroup ftplugin_javascript
  " Remove trailing whitespace
  autocmd BufWritePre <buffer> %s/\s\+$//e
  " Convert CR to LF
  autocmd BufWritePre <buffer> %s/\r/\r/e
augroup END

" Follow .mjs file extensions
setlocal suffixesadd=.js,.mjs
