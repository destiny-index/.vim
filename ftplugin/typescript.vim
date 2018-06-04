" Remove trailing whitespace
autocmd BufWritePre <buffer> %s/\s\+$//e
" Convert CR to LF
autocmd BufWritePre <buffer> %s/\r/\r/e

" Language Server Mappings
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
