nnoremap <localleader>t :execute "edit " . python#toggle_unittest_path()<CR>
nnoremap <buffer> <F10> :call python#run_test()<CR>
