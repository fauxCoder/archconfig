" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'ntpeters/vim-better-whitespace'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" use lightline and don't show mode twice
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" search folders recursively
set path+=**

set number
set tabstop=4
set shiftwidth=4
set expandtab
