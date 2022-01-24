let b:ale_linters = ['cabal_ghc', 'stack_ghc']

nnoremap <buffer> <LocalLeader>r :call haskell#run_script()<CR>

setlocal suffixesadd=.hs
setlocal keywordprg=hoogle\ --info
