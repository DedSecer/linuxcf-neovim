"====================
"=     dein.vim     =
"====================

if &compatible
  set nocompatible
endif
let dein_path="~/.config/nvim/dein"
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

echo dein_path
if dein#load_state(dein_path)
	call dein#begin(dein_path)

	call dein#add(dein_path.'/repos/github.com/Shougo/dein.vim')
	
	call dein#add('neoclide/coc.nvim', {'rev':'release'})
	call dein#add('wsdjeg/dein-ui.vim')
	call dein#add('mhinz/vim-startify')
	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

source ~/.config/nvim/plugged_scripts/coc.vim
"source ~/.config/nvim/plugged_scripts/vista.vim
"source ~/.config/nvim/plugged_scripts/airline.vim
"source ~/.config/nvim/plugged_scripts/undotree.vim

"key map

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
set ignorecase
set smartcase
set scrolloff=4
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

autocmd FileType json syntax match Comment +\/\/.\+$+

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"colorscheme command
command Cd colorscheme dracula

"======Save History=====
if has("autocmd") 
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
	endif
"=======================

"set the type of fishfile
au BufRead,BufNewFile *.fish		setfiletype conf


"==============
noremap <C-r> :call RunFile()<CR>

func! RunFile()	
	
	"get the extension of file
	let $ext=expand('%:e')
	let $filen=expand('%:p')	
	exec "w"
	set splitbelow
	:sp

	if $ext == 'py'
		term python -i $filen
	elseif $ext == 'sh'
		term bash -c $filen 
	elseif $ext  == 'fish'
		term fish $filen
	endif
	
	:res -5<CR>
endfunc
"=============
