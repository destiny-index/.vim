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

" tern_for_vim
let g:tern_map_keys = 1

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

" vim-flow
let g:flow#autoclose = 1
let g:flow#showquickfix = 0

" ale
let g:ale_cpp_clangtidy_options='-std=c++14'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
