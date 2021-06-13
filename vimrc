set hlsearch
set background=dark
set hidden
set path+=**

set expandtab
set shiftwidth=2
set tabstop=2
set list

set scrolloff=5
set ignorecase
set smartcase

set completeopt=menu,menuone,preview,noselect,noinsert

filetype plugin indent on

if has('persistent_undo')
  if !isdirectory($HOME . '/.cache/vim/undo')
    call mkdir($HOME . '/.cache/vim/undo', 'p')
  endif

  set undofile
  set undodir=$HOME/.cache/vim/undo
endif

if has('nvim')
  tnoremap <C-w> <C-\><C-n><C-w>

  augroup nvimrc
    autocmd!
    autocmd TermOpen * startinsert
  augroup END
endif

let mapleader = '\'
let maplocalleader = '\'

if isdirectory('.git')
  set grepprg=git\ grep\ -n\ $*
endif

nnoremap <Leader>g :grep -I -w <cword><CR>

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
nnoremap <F12> :split $MYVIMRC<CR>

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" vim-ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" vim-polyglot
let g:polyglot_disabled = ['v']

" ALE
let g:ale_echo_msg_format = '%linter% - %s'

" Conqueror of Completion
nnoremap <silent><nowait> <LocalLeader>d  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <LocalLeader>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <LocalLeader>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <LocalLeader>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <LocalLeader>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <LocalLeader>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <LocalLeader>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <LocalLeader>p  :<C-u>CocListResume<CR>
