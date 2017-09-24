source $VIMRUNTIME/defaults.vim

set background=dark
set number
set expandtab
set shiftwidth=2
set softtabstop=2

let g:flow#autoclose = 1
let g:javascript_plugin_flow = 1

augroup TernKeymap
  autocmd!
  autocmd FileType javascript nnoremap <buffer> gd :TernDef<CR>
  autocmd FileType javascript nnoremap <buffer> gr :TernRefs<CR>
augroup END
