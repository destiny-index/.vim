setlocal suffixesadd=.js,.mjs

nnoremap <silent> <localleader>h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <localleader>d :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <localleader>r :call LanguageClient_textDocument_rename()<CR>
