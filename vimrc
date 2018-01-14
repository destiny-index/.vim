" My own vimrc
runtime defaults.vim

set expandtab
set shiftwidth=2
set softtabstop=2
set background=dark
set hidden
set exrc

if has("nvim")
  tnoremap <C-w> <C-\><C-n><C-w>
endif

let mapleader = "-"
let maplocalleader = "\\"

" tern_for_vim
let g:tern_map_keys = 1

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

" vim-flow
let g:flow#autoclose = 1
let g:flow#enable = 0
let g:flow#showquickfix = 0

" ale
let g:ale_cpp_clangtidy_options = '-std=c++14'
let g:ale_cpp_gcc_options = '-std=c++14 -Wall -I' . $HOME . '/.node/include/node'
let g:ale_cpp_clang_options = '-std=c++14 -Wall -I' . $HOME. '/.node/include/node'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
