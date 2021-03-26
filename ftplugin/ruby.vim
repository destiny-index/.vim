function <SID>run_script() abort
	if getline(1) =~ "#!/usr/bin/env ruby"
		execute "!ruby %"
	else
		execute "!rake test"
	endif
endfunction

nnoremap <F10> :call <SID>run_script()<CR>
nnoremap <F11> :!rake test TEST=%<CR>
