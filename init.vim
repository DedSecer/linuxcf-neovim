"=================
"=    Key Map    =
"=================

let mapleader=" "


map Q :q<CR>
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

noremap <LEADER>h <C-w>h	
noremap <LEADER>j <C-w>j	
noremap <LEADER>k <C-w>k	
noremap <LEADER>l <C-w>l

inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-h> <Left>
inoremap <c-l> <Right>

map <C-j>  :res +3<CR>
map <C-k>  :res -3<CR>
map <C-h>  :vertical resize-3<CR>
map <C-l>  :vertical resize+3<CR>

map tu :tabe 
map th :-tabnext<CR>
map tl :+tabnext<CR>
map <leader>sv <C-w>t<C-w>H
map <leader>sh <C-w>t<C-w>K
noremap <LEADER>K H
noremap <LEADER>J L
noremap <LEADER>M M

noremap - 0
noremap = $

map U  :redo<CR>

noremap <c-y> "+y
noremap <c-p> "+gp

noremap <LEADER><CR> :nohlsearch<CR>

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"save file to /tmp and run it by default
noremap <C-r> :call g:Runfile('tmp')<CR>i

"=================
"=    setting    =
"=================

set number
set relativenumber
set ignorecase
set smartcase
set scrolloff=4
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

"set the type of fishfile
au BufRead,BufNewFile *.fish	setfiletype conf

"===================
"=   Save History  =
"===================

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
if has('persistent_undo')
	set undodir=$HOME/.local/tmp/nvim/undo
	set undofile
endif
set backupdir=$HOME/.local/tmp/nvim/backup
set directory=$HOME/.local/tmp/nvim/backup


