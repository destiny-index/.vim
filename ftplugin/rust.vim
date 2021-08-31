set formatprg=rustfmt

nnoremap <buffer> <LocalLeader>r :split term://cargo run<CR>
nnoremap <buffer> <LocalLeader>t :split term://cargo test<CR>
nnoremap <buffer> <LocalLeader>c :split term://cargo check<CR>
