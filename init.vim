"====================
"=     dein.vim     =
"====================

let g:mapleader=" "

if &compatible
  set nocompatible
endif
let dein_path="~/.config/nvim/dein"
let g:dein#install_log_filename="~/.local/share/log/dein"

let g:dein#types#git#clone_depth=1
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(dein_path)
    call dein#begin(dein_path)
    call dein#add(dein_path.'/repos/github.com/Shougo/dein.vim')
    call dein#add('haya14busa/dein-command.vim')    

    call dein#add('hardcoreplayers/dashboard-nvim',
                \{'hook_add': 'source ~/.config/nvim/plugged_scripts/dashboard-add.vim'})

    call dein#add('neoclide/coc.nvim', 
                \{'rev': 'release',
                \ 'merged': 0,
                \ 'on_cmd': 'Coc',
                \ 'hook_add': 'source ~/.config/nvim/plugged_scripts/coc-add.vim',
                \ 'hook_source':'source ~/.config/nvim/plugged_scripts/coc-source.vim'})


    call dein#add('honza/vim-snippets')

    call dein#add('simnalamburt/vim-mundo',
                \{'on_cmd': 'Mundo',
                \ 'hook_add': 'map <c-u> :MundoToggle<CR>'})

    call dein#add('mg979/vim-visual-multi',{'on_cmd': 'VisualMulti'})

    call dein#add('liuchengxu/vim-clap',{'on_cmd': 'Clap', 'hook_add': 'map <c-c> :Clap command<CR>'})

    call dein#add('liuchengxu/vista.vim', 
                \{'on_cmd': 'Vista', 
                \ 'hook_add':'map <c-f> :Vista!!<CR>', 
                \ 'hook_source': 'source ~/.config/nvim/plugged_scripts/vista-source.vim'})

    call dein#add('vim-airline/vim-airline',
                \{'on_cmd':'Airline',
                \'hook_add': 'source ~/.config/nvim/plugged_scripts/airline-add.vim'})

    call dein#add('jaxbot/semantic-highlight.vim',{'on_cmd':'SemanticHighlight'})
    call dein#add('Yggdroot/indentLine',
                \{'on_cmd': 'IndentLines',
                \ 'hook_add':'source ~/.config/nvim/plugged_scripts/indentline-add.vim'})

    call dein#add('lambdalisue/suda.vim',{'hook_source':'command W w suda://%', 'on_cmd':'W'})

    call dein#add('iamcco/markdown-preview.nvim',
                \{'on_ft':['markdown','pandoc.markdown','rmd'],
                \ 'build':'sh -c "cd app & yarn install"'})

    call dein#add('tpope/vim-surround',{'on_cmd':'Surround'})
    call dein#add('gcmt/wildfire.vim',{'on_cmd':'Wildfire'})


    "colorscheme
    call dein#add('dracula/vim',{'name':'dracula'})
    call dein#add('arcticicestudio/nord-vim')
    call dein#add('ajmwagar/vim-deus')
    call dein#add('sainnhe/forest-night')
    call dein#add('trevordmiller/nova-vim')
    call dein#add('cocopon/iceberg.vim')
    
    call dein#end()
    call dein#save_state()
endif


"=================
"=    Key Map    =
"=================

"noremap r s

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
noremap <c-p> "+gp

noremap <LEADER><CR> :nohlsearch<CR>


noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>i

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"save file  and run it 
noremap <c-r> :call g:Runfile()<CR>


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
set tabstop=4
set expandtab
set smartindent
set hidden
set backupdir=~/.local/tmp/nvim/backup
set directory=~/.local/tmp/nvim/backup
function Oneline()    
    noremap <c-j> gj
    noremap <c-k> gk
    unmap <c-h>
    unmap <c-l>
endfunction


"autocmd FileType json syntax match Comment +\/\/.\+$+

"Save History
set undodir=~/.local/tmp/nvim/undo
set undofile

"Save Cursor History
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 

"set the type of fishfile
au BufRead,BufNewFile *.fish    setfiletype fish | set syntax=conf
