"Plugged 'COC' config

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
imap <C-g> <Plug>(coc-snippets-expand-jump)

set updatetime=300
set signcolumn=yes

let g:coc_global_extensions = ['coc-python','coc-vimlsp','coc-html','coc-tsserver','coc-css','coc-git','coc-json','coc-explorer','coc-snippets','coc-highlight','coc-yank','coc-clangd','coc-pairs','coc-fish','coc-rainbow-fart']
let g:markdown_fenced_languages = ['vim','help']

"coc-highlight
command Hlcsword autocmd CursorHold * silent call CocActionAsync('highlight')
"coc-yank
command! Yankhsty CocList -A --normal yank
