"Plugged 'COC' config

"extesion list
let g:coc_global_extensions = ["coc-actions", "coc-vimlsp", "coc-html", "coc-tsserver", "coc-css", "coc-json", "coc-explorer", "coc-snippets", "coc-highlight", "coc-yank", "coc-clangd", "coc-pairs", "coc-fish", "coc-pyright","coc-marketplace","coc-git"]

set updatetime=300
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


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

augroup CocHighightText

command! HlCsHold call HlcsHold() 
command! NoHlCsHold call NoHlcsHold()

func! HlcsHold()
    hi default link CocHighightText CursorColumn
    autocmd CocHighightText CursorHold * silent call CocActionAsync('highlight')
endfun 

func! NoHlcsHold()
    hi default link CocHighightText None
    autocmd! CocHighightText
endfun 

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
call coc#add_command('noHighlightCursorHold', 'NoHlCsHold', 'disable Highlight the word with cursor hold')



nmap <silent> <C-x> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
nmap <leader>x  <Plug>(coc-cursors-operator)
