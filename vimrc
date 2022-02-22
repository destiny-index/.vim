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
    autocmd BufEnter term://* startinsert
  augroup END
endif

let mapleader = '\'
let maplocalleader = '\'

if !empty(glob('.git'))
  set grepprg=git\ grep\ -n\ $*
endif

nnoremap <silent> <LocalLeader>g :grep! -I -w <cword><CR>:copen<CR>

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

" Vim Plug
if has('nvim')
  let vim_plug = stdpath('data') . '/site/autoload/plug.vim'

  if empty(glob(vim_plug))
    silent execute '!curl -fLo ' . vim_plug . ' --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  call plug#begin(stdpath('data') . '/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vader.vim'
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jvoorhis/coq.vim'
    Plug 'edkolev/erlang-motions.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-fugitive'
    Plug 'pbrisbin/vim-syntax-shakespeare'
  call plug#end()
endif
