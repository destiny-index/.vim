setlocal formatprg=clang-format

nnoremap <silent> <buffer> <localleader>cs :CSearch<cr>
nnoremap <silent> <buffer> <localleader>csc :CSearchContext<cr>
nnoremap <silent> <buffer> <localleader>ch :CCallHierarchy<cr>

setlocal path+=~/.node/include/node/
let b:ale_cpp_clangtidy_options = '-std=c++14'
let b:ale_cpp_gcc_options = '-std=c++14 -Wall -I' . $HOME . '/.node/include/node'
let b:ale_cpp_clang_options = '-std=c++14 -Wall -I' . $HOME. '/.node/include/node'
