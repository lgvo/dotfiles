" Set up plugins
source ~/.vim/plugins

filetype plugin on

set encoding=utf-8
set nocompatible

set tabstop=4 shiftwidth=4 expandtab autoindent smartindent
set relativenumber 
set splitright splitbelow
set noswapfile nobackup nowritebackup

" Basic Mapping

" leader ,
let mapleader = ","

" split with ,v and ,h
:nnoremap <M-v> :vsplit <cr>
:nnoremap <M-h> :split <cr>

" moving at windows with ,a ,s ,d ,f
:nnoremap <C-h> <C-w><C-h>
:nnoremap <C-j> <C-w><C-j>
:nnoremap <C-k> <C-w><C-k>
:nnoremap <C-l> <C-w><C-l>

:nnoremap <leader>m :make<cr>
:nnoremap <leader>a :AV<cr>


" remapping ; to : no shift hell
:nnoremap ; :

