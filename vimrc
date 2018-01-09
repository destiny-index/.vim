" My own vimrc
runtime defaults.vim

set expandtab
set shiftwidth=2
set softtabstop=2
set background=dark
set hidden
set exrc

let mapleader = "-"
let maplocalleader = "\\"

let g:tern_map_keys = 1
let g:flow#autoclose = 1
let g:showquickfix = 0
let g:ale_cpp_clangtidy_options='-std=c++14'
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup Javascript
  autocmd!
  autocmd BufRead,BufNewFile *.mjs set filetype=javascript
  autocmd FileType javascript setlocal suffixesadd=.js,/index.js
augroup END

augroup Cpp
  autocmd!
  autocmd FileType cpp setlocal formatprg=clang-format
augroup END
