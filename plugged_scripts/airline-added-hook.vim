let g:airline#extensions#vista#enabled = 0
let g:airline#extensions#tabline#enabled = 1

if  expand('$TERM') != 'linux'
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
endif
