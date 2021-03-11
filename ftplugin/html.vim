nnoremap <localleader>r :silent !xdotool key --window $(xdotool search --name "Mozilla Firefox" \| head --lines=1) F5<CR>
