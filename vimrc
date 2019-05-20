" My own vimrc
runtime defaults.vim

set hlsearch
set background=dark
set hidden
set exrc

set expandtab
set shiftwidth=2
set tabstop=2

if has('persistent_undo')
  if !isdirectory($HOME. '/.vim/undo')
    call mkdir($HOME . '/.vim/undo', 'p')
  endif

  set undofile
  set undodir=$HOME/.vim/undo
endif

if has('nvim')
  tnoremap <C-w> <C-\><C-n><C-w>
endif

let mapleader = '-'
let maplocalleader = '\'

nnoremap <leader>g :grep <cword> -IR *<CR>

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" ALE
let g:ale_echo_msg_format = '%linter% - %s'
let g:ale_kotlin_kotlinc_options = '-d /tmp'

augroup trim_trailing_whitespace
  autocmd!
  autocmd BufWritePre <buffer> call whitespace#removetrailing()
augroup END

command! WQ wq
command! Wq wq
command! W w
command! Q q

map <F1> <nop>
nnoremap <Esc> :noh<CR>

command! ForceWrite :write !sudo tee %
