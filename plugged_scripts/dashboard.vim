"disable tabline
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2 
autocmd FileType dashboard set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2 

let g:mapleader="\<Space>"
nmap <Leader>s :<C-u>SessionLoad<CR>
nmap <Leader>n :<C-u>DashboardNewFile<CR>
nnoremap <silent> <Leader>h :<C-u>Clap history<CR>
nnoremap <silent> <Leader>f :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
nnoremap <silent> <Leader>c :<C-u>Clap colors<CR>
nnoremap <silent> <Leader>g :<C-u>Clap grep2<CR>
nnoremap <silent> <Leader>m :<C-u>Clap marks<CR>

let g:dashboard_custom_shortcut={
  \ 'last_session' : 'SPC s',
  \ 'find_history' : 'SPC h',
  \ 'find_file' : 'SPC f',
  \ 'change_colorscheme' : 'SPC c',
  \ 'find_word' : 'SPC g',
  \ 'new_file' : 'SPC n',
  \ 'book_marks' : 'SPC m',
  \ }

"nmap <Leader>sl :<C-u>SessionLoad<CR>
"nmap <Leader>cn :<C-u>DashboardNewFile<CR>
"nnoremap <silent> <Leader>fh :<C-u>Clap history<CR>
"nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
"nnoremap <silent> <Leader>tc :<C-u>Clap colors<CR>
"nnoremap <silent> <Leader>fa :<C-u>Clap grep2<CR>
"nnoremap <silent> <Leader>fb :<C-u>Clap marks<CR>
"
"let g:dashboard_custom_shortcut={
"  \ 'last_session' : 'SPC s l',
"  \ 'find_history' : 'SPC f h',
"  \ 'find_file' : 'SPC f f',
"  \ 'change_colorscheme' : 'SPC t c',
"  \ 'find_word' : 'SPC f a',
"  \ 'book_marks' : 'SPC f b',
"  \ }
