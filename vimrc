source $VIMRUNTIME/defaults.vim

set expandtab
set shiftwidth=2
set softtabstop=2
set hidden
set background=dark
set exrc

let mapleader = "-"
let maplocalleader = "\\"

let g:tern_map_keys = 1
let g:flow#autoclose = 1
let g:showquickfix = 0
let g:ale_cpp_clangtidy_options='-std=c++14'

augroup Javascript
  autocmd!
  autocmd FileType javascript setlocal suffixesadd=.js
augroup END

augroup Cpp
  autocmd!
  autocmd FileType cpp setlocal formatprg=clang-format
augroup END
