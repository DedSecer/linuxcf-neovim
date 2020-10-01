"Plugged 'COC' hook

map <c-e> ::CocCommand explorer<CR>
map <c-e><c-e> :CocList explPresets<CR>
"map <c-c> :CocCommand<CR>
let g:coc_explorer_global_presets = {
\   'normal': {
\     'root-uri': './',
\   },
\   'neovimConf': {
\     'root-uri': '~/.config/nvim',
\   },
\   'fishConf': {
\     'root-uri': '~/.config/fish',
\   },
\   'config': {
\     'root-uri': '~/.config/',
\   },
\   'repo': {
\     'root-uri': '~/Repo',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\ }

" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>

" List all presets
