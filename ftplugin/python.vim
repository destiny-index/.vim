nnoremap <buffer> <LocalLeader>gt :execute "edit " . python#toggle_unittest_path()<CR>
nnoremap <buffer> <LocalLeader>t :call python#run_test()<CR>
