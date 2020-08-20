func! g:Runfile(method)	
    w
    let filen=expand('%:p')
	let ext=expand('%:e')
	
	set splitbelow

	if ext  == 'c'
        let outname=expand('%:h') . '/' . expand('%:r') . '.out'
		exec '!gcc '. filen . ' -o ' . outname
        if !v:shell_error
            exec 'term time ' . outname
            sp
        "else "quit the spilt windows if fail
        "    :q
        endif

	elseif ext == 'py'
        sp
		exec 'term python -i ' . filen
	
	elseif ext == 'sh'
		let cmd='sh ' . filen
        sp
		exec 'term ' . cmd

	endif
	
	:res -5<CR>
endfunc
