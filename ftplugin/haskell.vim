let b:ale_linters = ['cabal_ghc', 'stack_ghc']
setlocal suffixesadd=.hs
setlocal keywordprg=hoogle\ --info

nnoremap <buffer> <LocalLeader>r :call <SID>run_haskell()<CR>

function! s:run_haskell()
  if getline(1) =~ "cabal"
    execute "!cabal run %"
  elseif getline(1) =~ "stack"
    execute "!stack %"
  endif
endfunction

