source $VIMRUNTIME/defaults.vim

set background=dark
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set formatprg=clang-format

let g:flow#autoclose = 1
let g:javascript_plugin_flow = 1

let mapleader = "-"
let maplocalleader = "\\"

augroup TernKeymap
  autocmd!
  autocmd FileType javascript nnoremap <buffer> <LocalLeader>d :TernDef<CR>
  autocmd FileType javascript nnoremap <buffer> <LocalLeader>r :TernRefs<CR>
  autocmd FileType javascript nnoremap <buffer> <LocalLeader>t :TernType<CR>
  autocmd FileType javascript nnoremap <buffer> <LocalLeader>o :TernDoc<CR>
  autocmd FileType javascript nnoremap <buffer> <LocalLeader>c :TernRename<CR>
augroup END

