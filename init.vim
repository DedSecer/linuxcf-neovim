" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim
set nocompatible  


"==============
"=  vim-plug  =
"==============
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'iamcco/markdown-preview.nvim',{'do':'cd app & yarn install'}
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
"Plug 'neomake/neomake'
Plug 'liuchengxu/vista.vim'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'jaxbot/semantic-highlight.vim'
call plug#end()

source ~/.config/nvim/plugged_scripts/coc.vim
source ~/.config/nvim/plugged_scripts/vista.vim
source ~/.config/nvim/plugged_scripts/airline.vim
source ~/.config/nvim/plugged_scripts/nerdtree.vim
source ~/.config/nvim/plugged_scripts/undotree.vim





let mapleader=" "

map Q :q<CR>
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

map <LEADER>h <C-w>h	
map <LEADER>j <C-w>j	
map <LEADER>k <C-w>k	
map <LEADER>l <C-w>l

map <C-j>  :res +3<CR>
map <C-k>  :res -3<CR>
map <C-h>  :vertical resize-3<CR>
map <C-l>  :vertical resize+3<CR>

map tu :tabe 
map th :-tabnext<CR>
map tl :+tabnext<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map - 0
map = $

map U  :redo<CR>

set number
set relativenumber
set smartcase
set scrolloff=4
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

autocmd FileType json syntax match Comment +\/\/.\+$+


"======Save History=====
if has("autocmd") 
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
	endif
"=======================


"==============
noremap r :call RunFile()<CR>
func! RunFile()	
	exec "w"
	if &filetype == 'python'
		set splitbelow
		:sp
		term python -i %
		:res -5<CR>
	endif
endfunc
"=============
