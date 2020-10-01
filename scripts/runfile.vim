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

    elseif &filetype == 'javascript'
        exec "term time node %<.js"

    elseif &filetype == 'typescript'
        exec '!tsc %'
        if !v:shell_error
            exec "term time node %<.js"
        else "quit the spilt windows if fail
            :q
        endif

    endif
    
    :res -5<CR>
endfunc
