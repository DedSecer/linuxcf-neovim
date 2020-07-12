"Plugged 'COC' config

"mapping
map <c-e> :CocCommand explorer<CR>
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>a  <Plug>(coc-codeaction-selected)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)


inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"



function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<Down>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-TAB> pumvisible() ? "\<Up>" : "\<C-h>"

	

"imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <leader>j <Plug>(coc-snippets-expand-jump)

set updatetime=300
set signcolumn=yes

let g:coc_global_extensions = ['coc-python','coc-vimlsp','coc-html','coc-tsserver','coc-css','coc-git','coc-json','coc-explorer','coc-snippets','coc-highlight','coc-yank','coc-clangd']
let g:markdown_fenced_languages = ['vim','help']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"coc-highlight
"autocmd CursorHold * silent call CocActionAsync('highlight')

"coc-josn
autocmd FileType json syntax match Comment +\/\/.\+$+

"coc-yank
command! Yankhsty CocList -A --normal yank
