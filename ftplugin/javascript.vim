" Remove trailing whitespace
autocmd BufWritePre <buffer> %s/\s\+$//e
" Convert CR to LF
autocmd BufWritePre <buffer> %s/\r/\r/e
" Follow .mjs file extensions
setlocal suffixesadd=.js,.mjs
