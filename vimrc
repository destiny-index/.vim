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

" Conqueror of Completion
" nnoremap <silent><nowait> <LocalLeader>d  :<C-u>CocList diagnostics<cr>
" nnoremap <silent><nowait> <LocalLeader>e  :<C-u>CocList extensions<cr>
" nnoremap <silent><nowait> <LocalLeader>c  :<C-u>CocList commands<cr>
" nnoremap <silent><nowait> <LocalLeader>o  :<C-u>CocList outline<cr>
" nnoremap <silent><nowait> <LocalLeader>s  :<C-u>CocList -I symbols<cr>
" nnoremap <silent><nowait> <LocalLeader>j  :<C-u>CocNext<CR>
" nnoremap <silent><nowait> <LocalLeader>k  :<C-u>CocPrev<CR>
" nnoremap <silent><nowait> <LocalLeader>p  :<C-u>CocListResume<CR>
"
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
"
" nmap <LocalLeader>n <Plug>(coc-rename)
"
" xmap <LocalLeader>f <Plug>(coc-format-selected)
" nmap <LocalLeader>f <Plug>(coc-format-selected)
" xmap <LocalLeader>a <Plug>(coc-codeaction-selected)
" nmap <LocalLeader>a <Plug>(coc-codeaction-selected)
" nmap <LocalLeader>ac <Plug>(coc-codeaction)
" nmap <LocalLeader>qf <Plug>(coc-fix-current)

nnoremap <silent> <LocalLeader>H :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
