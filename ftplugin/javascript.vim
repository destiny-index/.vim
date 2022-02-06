" Follow .mjs file extensions
setlocal suffixesadd=.js,.mjs,.json

let b:ale_linters = ['standard']

nnoremap <buffer> <LocalLeader>t :!npm test<CR>
