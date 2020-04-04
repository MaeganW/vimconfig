filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'maxmellon/vim-jsx-pretty'

call vundle#end()            " required
filetype plugin indent on    " required
