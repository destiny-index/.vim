" Remove trailing whitespace
autocmd BufWritePre <buffer> %s/\s\+$//e
" Convert CR to LF
autocmd BufWritePre <buffer> %s/\r/\r/e
" Follow .mjs file extensions
setlocal suffixesadd=.js,.mjs
" Use Prettier as the default formatter
setlocal formatprg=prettier

" Language Server Mappings
nnoremap <silent> <localleader>g :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <localleader>c :call LanguageClient_textDocument_references()<CR>
