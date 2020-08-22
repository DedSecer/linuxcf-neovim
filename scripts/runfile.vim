func! g:Runfile()	
    exec 'w'
	
	set splitbelow
    sp

	if &filetype  == 'c'
		exec "!g++ % -o %<"
        if !v:shell_error
            exec "term time ./%<"
        else "quit the spilt windows if fail
            :q
        endif

	elseif &filetype == 'python'
		exec 'term python %'	

	elseif &filetype == 'sh'
		exec 'term sh %'
	endif
	
	:res -5<CR>
endfunc
