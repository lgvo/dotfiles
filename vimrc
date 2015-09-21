" Set up plugins
source ~/.vim/plugins

filetype plugin on

set tabstop=4 shiftwidth=4 expandtab

" Basic Mapping

" leader ,
let mapleader = ","

" split with ,v and ,h
:nnoremap <leader>v :vsplit <cr>
:nnoremap <leader>h :split <cr>

" moving at windows with ,a ,s ,d ,f
:nnoremap <leader>a <C-w><C-h>
:nnoremap <leader>s <C-w><C-j>
:nnoremap <leader>d <C-w><C-k>
:nnoremap <leader>f <C-w><C-l>

:nnoremap <leader>e $
:nnoremap <leader>b ^

" remapping ; to : no shift hell
:nnoremap ; :

