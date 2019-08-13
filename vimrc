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

nnoremap <leader>g :grep <cword> --exclude tags -I -R *<CR>

augroup vimrc
  autocmd!
  autocmd BufWritePre * call whitespace#removetrailing()
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

command! WQ wq
command! Wq wq
command! W w
command! Q q
command! ForceWrite :write !sudo tee %

map <F1> <Nop>
map! <F1> <Nop>
nnoremap <silent> <Esc> :noh<CR>
nnoremap <F12> :split $MYVIMRC<CR>

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" ALE
let g:ale_echo_msg_format = '%linter% - %s'
