" Conqueror of Completion

function! conqueror#bind_keys()
  nnoremap <silent><nowait><buffer> <LocalLeader>d  :<C-u>CocList diagnostics<cr>
  nnoremap <silent><nowait><buffer> <LocalLeader>e  :<C-u>CocList extensions<cr>
  nnoremap <silent><nowait><buffer> <LocalLeader>c  :<C-u>CocList commands<cr>
  nnoremap <silent><nowait><buffer> <LocalLeader>o  :<C-u>CocList outline<cr>
  nnoremap <silent><nowait><buffer> <LocalLeader>s  :<C-u>CocList -I symbols<cr>
  nnoremap <silent><nowait><buffer> <LocalLeader>j  :<C-u>CocNext<CR>
  nnoremap <silent><nowait><buffer> <LocalLeader>k  :<C-u>CocPrev<CR>
  nnoremap <silent><nowait><buffer> <LocalLeader>p  :<C-u>CocListResume<CR>

  nmap <silent><buffer> gd <Plug>(coc-definition)
  nmap <silent><buffer> gy <Plug>(coc-type-definition)
  nmap <silent><buffer> gi <Plug>(coc-implementation)
  nmap <silent><buffer> gr <Plug>(coc-references)

  nmap <buffer> <LocalLeader>n <Plug>(coc-rename)
  xmap <buffer> <LocalLeader>f <Plug>(coc-format-selected)
  nmap <buffer> <LocalLeader>f <Plug>(coc-format-selected)
  xmap <buffer> <LocalLeader>a <Plug>(coc-codeaction-selected)
  nmap <buffer> <LocalLeader>a <Plug>(coc-codeaction-selected)
  nmap <buffer> <LocalLeader>ac <Plug>(coc-codeaction)
  nmap <buffer> <LocalLeader>qf <Plug>(coc-fix-current)

  nnoremap <silent><buffer> <LocalLeader>H :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction
endfunction
