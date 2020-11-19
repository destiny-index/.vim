function haskell#run_script()
  if getline(1) =~ "cabal"
    execute "!cabal run %"
  elseif getline(1) =~ "stack"
    execute "!stack %"
  endif
endfunction
