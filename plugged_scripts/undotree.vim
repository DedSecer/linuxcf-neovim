"Plugged 'undotree' config
"silent !mkdir -p ~/.local/tmp/nvim/backup
"silent !mkdir -p ~/.local/tmp/nvim/undo
set backupdir=~/.local/tmp/nvim/backup
set directory=~/.local/tmp/nvim/backup
if has('persistent_undo')
	set undodir=~/.local/tmp/nvim/undo
	set undofile
endif
"set undofile
"set undodir=~/.local/nvim/tmp/undo,
map <c-u> :UndotreeToggle<CR>
