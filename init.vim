"key map

let mapleader=" "

noremap r s
unmap s

"noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>i

map Q :q<CR>
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

noremap <LEADER>h <C-w>h	
noremap <LEADER>j <C-w>j	
noremap <LEADER>k <C-w>k	
noremap <LEADER>l <C-w>l

map <C-j>  :res +3<CR>
map <C-k>  :res -3<CR>
map <C-h>  :vertical resize-3<CR>
map <C-l>  :vertical resize+3<CR>

map tu :tabe 
map th :-tabnext<CR>
map tl :+tabnext<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K
noremap sk H
noremap sj L
noremap sm M

noremap - 0
noremap = $

map U  :redo<CR>

noremap <c-y> "+y
noremap <c-p> "+gp

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

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



"======Save History=====
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
if has('persistent_undo')
	set undodir=$HOME/.local/tmp/nvim/undo
	set undofile
endif
set backupdir=$HOME/.local/tmp/nvim/backup
set directory=$HOME/.local/tmp/nvim/backup
"=======================


"set the type of fishfile
au BufRead,BufNewFile *.fish	setfiletype conf


"==============
noremap <C-r> :call RunFile()<CR>i

func! RunFile()	
	
	"get the extension of file
	let $ext=expand('%:e')
	let $filen=expand('%:p')	
	exec "w"
	set splitbelow
	sp

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
