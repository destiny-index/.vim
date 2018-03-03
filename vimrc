" My own vimrc
runtime defaults.vim

set nohlsearch
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

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" flow-language-server
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
\ 'javascript': ['flow-language-server', '--stdio'],
\ }

