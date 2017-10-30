source $VIMRUNTIME/defaults.vim

set expandtab
set shiftwidth=2
set softtabstop=2
set hidden
set background=dark

let mapleader = "-"
let maplocalleader = "\\"

let g:tern_map_keys = 1
let g:flow#autoclose = 1
let g:showquickfix = 0

augroup Javascript
  autocmd!
  autocmd FileType javascript setlocal suffixesadd=.js
augroup END
