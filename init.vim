"=================
"=    Key Map    =
"=================

let g:mapleader=" "

map Q :q<CR>
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

noremap + 5<c-e>
noremap _ 5<c-y>

noremap <LEADER>h <C-w>h    
noremap <LEADER>j <C-w>j    
noremap <LEADER>k <C-w>k    
noremap <LEADER>l <C-w>l

inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-h> <Left>
inoremap <c-l> <Right>

cnoremap <c-j> <Down>
cnoremap <c-k> <Up>
cnoremap <c-h> <Left>
cnoremap <c-l> <Right>

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
noremap <c-p> "+p
noremap <LEADER>y "+y
noremap <LEADER>p "+p

noremap <LEADER><CR> :nohlsearch<CR>


noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>i

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"save file  and run it 
noremap <c-r> :call g:Runfile()<CR>

"my script
source ~/.config/nvim/scripts/runfile.vim

function Oneline()    
    noremap <c-j> gj
    noremap <c-k> gk
    unmap <c-h>
    unmap <c-l>
endfunction



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
set tabstop=4
set expandtab
set smartindent
set hidden
set backupdir=~/.local/tmp/nvim/backup
set directory=~/.local/tmp/nvim/backup


"Save History
set undodir=~/.local/tmp/nvim/undo
set undofile

"Save Cursor History
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 

"set the type of fishfile
au BufRead,BufNewFile *.fish    setfiletype fish | set syntax=conf
