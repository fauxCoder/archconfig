" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'maximbaz/lightline-ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'w0rp/ale'

call plug#end()

" ale
let g:ale_linters = {
\   'cpp': ['clangd'],
\   'rust': ['cargo'],
\}

let g:ale_fixers = {
\   'cpp':  ['trim_whitespace', 'remove_trailing_lines'],
\   'rust': ['trim_whitespace', 'remove_trailing_lines', 'rustfmt'],
\}

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" use lightline and don't show mode twice
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = { 'right': [['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'], ['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype']] }

" search folders recursively
set path+=**

set number
set tabstop=4
set shiftwidth=4
set expandtab

" Scrolling
set scrolloff=16

" locale?
set encoding=utf8
set fileencoding=utf-8

" mappings
nnoremap <silent> <C-P> :FZF<Enter>
