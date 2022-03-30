" Automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'msanders/snipmate.vim'
Plug 'preservim/nerdtree'

call plug#end()

set nu
set cursorline
set ruler
set tabstop=4
set showcmd
set ai
set shiftwidth=2
set hlsearch
set backspace=2
syntax on
