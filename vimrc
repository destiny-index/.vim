" My own vimrc
runtime defaults.vim

set nohlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
set background=dark
set hidden
set exrc

" Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\r/\r/e

if has("nvim")
  tnoremap <C-w> <C-\><C-n><C-w>
endif

let mapleader = "-"
let maplocalleader = "\\"

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" ALE
let g:ale_echo_msg_format = '%linter% - %s'

" flow-language-server
let g:LanguageClient_serverCommands = {
\ 'javascript': ['flow-language-server', '--stdio'],
\ }
let g:LanguageClient_autoStart = 1
