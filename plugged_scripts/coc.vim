"Plugged 'COC' config

"extesion list
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-tsserver', 'coc-css', 'coc-git', 'coc-json', 'coc-explorer', 'coc-snippets', 'coc-highlight', 'coc-yank', 'coc-clangd', 'coc-pairs', 'coc-fish', 'coc-tabnine']

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"Tab and Shift+tab to select
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<Down>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-TAB> pumvisible() ? "\<Up>" : "\<C-h>"

"Enter/Return to complete
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"ctrl+space to refresh
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
command! JumpDefinition call CocAction('jumpDefinition')
command! JumpDeclaration call CocAction('jumpDeclaration')
command! JumpImplementation call CocAction('jumpImplementation')
command! JumpTypeDefinition call CocAction('jumpTypeDefinition')
command! JumpReferences call CocAction('jumpReferences')

nmap <leader>rn <Plug>(coc-rename)
xmap <leader>a  <Plug>(coc-codeaction-selected)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-g> <Plug>(coc-snippets-expand-jump)

set updatetime=300
set signcolumn=yes

let g:markdown_fenced_languages = ['vim', 'help']

command! HlCsHold autocmd CursorHold * silent call CocActionAsync('highlight')

"coc-yank
command! Yankhsty CocList -A --normal yank

"coc-format
command! Format call CocAction('format')
command! FormatSelected call CocAction('formatSelected', 'v')

vmap <leader>=  <Plug>(coc-format-selected)
nmap <leader>=  <Plug>(coc-format-selected)



"command added:
call coc#add_command('format', 'Format', 'Format current buffer using the language server')
call coc#add_command('formatSelected', 'FormatSelected', 'Format select ranger using the language server')

call coc#add_command('jumpDefinition', 'JumpDefinition', 'jump to definition position of the current symbol')
call coc#add_command('jumpDeclaration', 'JumpDeclaration', 'jump to declaration position of the current symbol')
call coc#add_command('jumpImplementatio', 'JumpImplementatio', 'jump to implementatio position of the current symbol')
call coc#add_command('jumpTypeDefinition', 'JumpTypeDefinition', 'Jump to type definition position of the current symbol')
call coc#add_command('jumpReferences', 'JumpReferences', 'Jump to references position of the current symbol')

call coc#add_command('yankFromHistory', 'Yankhsty', 'browser your clipboard history')

call coc#add_command('highlightCursorHold', 'HlCsHold', 'Highlight the word with cursor hold')



nmap <silent> <C-x> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
nmap <leader>x  <Plug>(coc-cursors-operator)
