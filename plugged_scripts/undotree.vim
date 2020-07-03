"Plugged 'undotree' config

set backupdir=~/.local/tmp/nvim/backup
set directory=~/.local/tmp/nvim/backup
if has('persistent_undo')
	set undodir=~/.local/tmp/nvim/undo
	set undofile
endif
map <c-u> :UndotreeToggle<CR>
