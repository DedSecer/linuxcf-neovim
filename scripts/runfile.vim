
com RunfileClean !rm /tmp/NvimRunfile*
com -nargs=1 -complete=custom,ReturnRunfileOption Runfile call Runfile(<q-args>)


func! ReturnRunfileOption(A,L,P)
	return "current\ntmp"
endfun

func! SaveToTmpf()
	let ext=expand('%:e')
	let filen=expand('%:p')	
	
	if ext == 'c'
		let tmpfilen=system("echo -n '/tmp/NvimRunfile-' ; date +%H:%M:%S.out")
		exec '!gcc % -o ' . tmpfilen
	else
		let tmpfilen=system("echo -n '/tmp/'NvimRunfile- ; date +%H:%M:%S.".ext)
		exec 'w ' . tmpfilen
	endif
	
	call system('chmod +x '.tmpfilen)
	return tmpfilen
endfunc


func! g:Runfile(method)	

	if a:method == 'tmp'
		let filen=SaveToTmpf()
	elseif a:method == 'current'
		let filen=expand('%')
		w
	endif
	
	let ext=expand('%:e')
	
	set splitbelow
	sp

	if ext  == 'c'
		exec 'term '. filen
	
	elseif ext == 'py'
		exec 'term python -i ' . filen
	
	elseif ext == 'sh'
		let cmd='sh ' . filen
		exec 'term ' . cmd

	endif
	
	:res -5<CR>
endfunc

