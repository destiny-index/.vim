function <SID>run_script() abort
	if getline(1) =~ "#!/usr/bin/env ruby"
		execute "!ruby %"
	else
		execute "!rake test"
	endif
endfunction

nnoremap <buffer> <LocalLeader>r :call <SID>run_script()<CR>
nnoremap <buffer> <LocalLeader>t :!rake test TEST=%<CR>
