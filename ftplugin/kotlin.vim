let b:ale_kotlin_kotlinc_options = '-d /tmp'
let b:ale_linters = ['ktlint']

nmap <buffer> <silent> gd <Plug>(coc-definition)
nmap <buffer> <silent> gy <Plug>(coc-type-definition)
nmap <buffer> <silent> gi <Plug>(coc-implementation)
nmap <buffer> <silent> gr <Plug>(coc-references)

nmap <buffer> <LocalLeader>rn <Plug>(coc-rename)

xmap <buffer> <LocalLeader>f <Plug>(coc-format-selected)
nmap <buffer> <LocalLeader>f <Plug>(coc-format-selected)
xmap <buffer> <LocalLeader>a <Plug>(coc-codeaction-selected)
nmap <buffer> <LocalLeader>a <Plug>(coc-codeaction-selected)
nmap <buffer> <LocalLeader>ac <Plug>(coc-codeaction)
nmap <buffer> <LocalLeader>qf <Plug>(coc-fix-current)

nnoremap <buffer> <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
