set formatprg=clang-format
set path+=/usr/include/x86_64-linux-gnu,src/**,include/**

if !exists('g:ale_c_include_flags')
	let g:ale_c_include_flags = ''
endif

let b:ale_linters = ['clang', 'gcc', 'cppcheck']
let b:ale_c_clang_options = '-std=gnu99 -Wall ' . g:ale_c_include_flags
let b:ale_c_gcc_options = '-std=gnu99 -Wall ' . g:ale_c_include_flags
