set nocompatible              		" Want the latest vim settings/options
so ~/.vim/plugins.vim


" ======== General Settings ======== {{{

syntax enable
set mouse=a

set backspace=indent,eol,start  	"Make backspace behave like every other editor.
let mapleader = " "		 	"The default leader is \, but a space is much better.
set number				"Activate line numbers.

" }}}


" ======== Visuals ======== {{{

colorscheme atom-dark-256
set t_CO=256i				"Force 256 colors in terminal"

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

" }}}


" ======== Auto-Commands ======== {{{

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vim/vimrc source %
augroup END

" }}}


" vim:foldmethod=marker:foldlevel=0
