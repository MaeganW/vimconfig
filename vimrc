set nocompatible              		" Want the latest vim settings/options
so ~/.vim/plugins.vim
let $MYVIMRC="~/.vim/vimrc"


" ======== General Settings ======== {{{

syntax enable
set mouse=a

set backspace=indent,eol,start  	"Make backspace behave like every other editor.
let mapleader = " "		 	"The default leader is \, but a space is much better.
"set nonumber				"Deactivate line numbers.
set number				"Activate line numbers.

" }}}


" ======== Visuals ======== {{{

colorscheme atom-dark-256
set redrawtime=10000
set t_CO=256				"Force 256 colors in terminal
highlight LineNr ctermbg=bg		"Removes line number highlighting
"set foldcolumn=2			"fakes left-padding in terminal
hi foldcolumn ctermbg=bg		"sets padding color to the bg color

" }}}


" ======== Search ======== {{{

set hlsearch
set incsearch

" }}}


" ======== Split Management ======== {{{

set splitbelow
set splitright

nmap <leader>h <C-W><C-H>
nmap <leader>j <C-W><C-J>
nmap <leader>k <C-W><C-K>
nmap <leader>l <C-W><C-L>

" }}}


" ======== Mappings ======== {{{

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Toggle code folding
nmap <Leader>f za

"Toggle nerdtree
nmap <Leader>o :NERDTreeToggle<cr>

"CtrlP
nmap <Leader>p <C-p>

"CtrlP - search for symbols
nmap <Leader>s :CtrlPBufTag<cr>

"CtrlP - searches most recently used files
nmap <Leader>r :CtrlPMRUFiles<cr>

" }}}


" ======== Plugin-Settins ======== {{{

" CtrlP Settings
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

" NerdTree Settings
let NERDTreeHijackNetrw = 0

"}}}


" ======== Auto-Commands ======== {{{

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost vimrc source $MYVIMRC
augroup END

" }}}


" ======== Tips & Notes ======== {{{

" - -> Moves up a directory
" zz -> centers the line where the cursor is located
" :bd -> destroys all buffers

" }}}


" vim:foldmethod=marker:foldlevel=0
