setlocal formatprg=prettier\ --parser\ markdown\ --prose-wrap\ always\ --tab-width\ 4 

augroup trim_trailing_whitespace
  autocmd!
augroup END
