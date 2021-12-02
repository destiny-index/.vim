nnoremap <buffer> <LocalLeader>gt :execute "edit " . python#toggle_unittest_path()<CR>
nnoremap <buffer> <LocalLeader>T :call python#run_test()<CR>
nnoremap <buffer> <LocalLeader>r :sp term://python '%'<CR>
nnoremap <buffer> <LocalLeader>t :sp term://python -m unittest '%'<CR>
