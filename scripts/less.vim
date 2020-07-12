fun! s:End()
	set ma
	if exists('s:lz')
		let &lz = s:lz
	endif
	unmap h
	unmap H
	unmap j
	unmap k

	map <c-y> "+y
	map <c-p> "+gp
endfun

fun! s:Help()
	echo "<Space>   One page forward          b         One page backward"
	echo "d         Half a page forward       u         Half a page backward"
	echo "<Enter>   One line forward          k         One line backward"
	echo "G         End of file               g         Start of file"
	echo "N%        percentage in file"
	echo "\n"
	echo "/pattern  Search for pattern        ?pattern  Search backward for pattern"
	echo "n         next pattern match        N         Previous pattern match"
	if &foldmethod != "manual"
		echo "\n"
		echo "zR        open all folds            zm        increase fold level"
	endif
	echo "\n"
	echo ":n<Enter> Next file                 :p<Enter> Previous file"
	echo "\n"
	echo "q         Quit                      v         Edit file"
	let i = input("Hit Enter to continue")
endfun

func! Syntax_pager()
	lua require("man").highlight_man_page()
	so $VIMRUNTIME/syntax/man.vim
endfunc

map H h

noremap j <c-e>
noremap k <c-y>

noremap J 5<c-e>
noremap K 5<c-y>

noremap <LEADER><CR> :nohlsearch<CR>

set nocp
syntax on
set so=0
set hlsearch
set incsearch
nohlsearch
" Don't remember file names and positions
set shada=
set nows
" Inhibit screen updates while searching
let s:lz = &lz
set lz



" When reading from stdin don't consider the file modified.
au VimEnter * call Syntax_pager()
au VimEnter * set nomod


set noma

noremap h :call <SID>Help()<CR>

" Redraw
"noremap <script> r <C-L><SID>L
"noremap <script> <C-R> <C-L><SID>L
"noremap <script> R <C-L><SID>L

" Start of file
noremap <script> g gg<SID>L

" End of file
noremap <script> G G<SID>L



" Quitting
noremap q :q<CR>



