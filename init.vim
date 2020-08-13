"====================
"=     dein.vim     =
"====================

if &compatible
  set nocompatible
endif
let dein_path="~/.config/nvim/dein"
let g:dein#types#git#clone_depth=1
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(dein_path)
	call dein#begin(dein_path)
	call dein#add(dein_path.'/repos/github.com/Shougo/dein.vim')
	
	call dein#add('neoclide/coc.nvim', {'rev':'release','merged':0, 'on_cmd': 'Coc'})
	call dein#add('mhinz/vim-startify')
	call dein#add('haya14busa/dein-command.vim')	
	call dein#add('honza/vim-snippets')
	call dein#add('jiangmiao/auto-pairs')
	call dein#add('chiel92/vim-autoformat', {'on_cmd': 'Autoformat'})
	call dein#add('mbbill/undotree', {'on_cmd': 'Undotree'})
	call dein#add('liuchengxu/vista.vim', {'on_cmd': 'Vista', 'hook_post_source': 'source ~/.config/nvim/plugged_scripts/vista.vim'})
	call dein#add('vim-airline/vim-airline')
	call dein#add('jaxbot/semantic-highlight.vim')
	call dein#add('mhinz/vim-signify')
	call dein#add('iamcco/markdown-preview.nvim',{'on_ft':['markdown','pandoc.markdown','rmd'],'build':'sh -c "cd app & yarn install"'})
	call dein#add('Yggdroot/indentLine')
	call dein#add('mg979/vim-visual-multi',{'on_cmd': 'VisualMulti'})
	call dein#add('dracula/vim',{'name':'dracula'})
	call dein#add('arcticicestudio/nord-vim')
	call dein#add('trevordmiller/nova-vim')
	call dein#add('cocopon/iceberg.vim')

	call dein#end()
	call dein#save_state()
endif



let g:term=expand('$TERM')


"=================
"=    Key Map    =
"=================

let mapleader=" "

"noremap r s

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

noremap <LEADER>= =

map U  :redo<CR>

noremap <c-y> "+y
noremap <c-p> "+gp

noremap <LEADER><CR> :nohlsearch<CR>



noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>i

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"save file to /tmp and run it by default
noremap <C-r> :call g:Runfile('tmp')<CR>

"=================
"=  Plug config  =
"=================

source ~/.config/nvim/plugged_scripts/coc.vim
source ~/.config/nvim/plugged_scripts/airline.vim
source ~/.config/nvim/plugged_scripts/undotree.vim
source ~/.config/nvim/plugged_scripts/dein.vim
source ~/.config/nvim/plugged_scripts/indentline.vim

"Autopairs
let g:AutoPairsMapCh=0

"my script
source ~/.config/nvim/scripts/runfile.vim



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

autocmd FileType json syntax match Comment +\/\/.\+$+

let g:clipboard='xclip'
let g:python3_host_prog='/bin/python3'
"======Save History=====
if has("autocmd") 
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
	endif
"=======================


"set the type of fishfile
au BufRead,BufNewFile *.fish	setfiletype conf

