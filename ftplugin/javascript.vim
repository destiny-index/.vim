augroup ftplugin_javascript
  autocmd!
  autocmd BufWritePre <buffer> call whitespace#removetrailing()
augroup END

" Follow .mjs file extensions
setlocal suffixesadd=.js,.mjs
