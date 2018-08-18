" My own vimrc
runtime defaults.vim

set nohlsearch
set background=dark
set hidden
set exrc

set expandtab
set shiftwidth=2
set tabstop=2

if has('nvim')
  tnoremap <C-w> <C-\><C-n><C-w>
endif

let mapleader = '-'
let maplocalleader = '\'

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" ALE
let g:ale_echo_msg_format = '%linter% - %s'

command WQ wq
command Wq wq
command W w
command Q q
