set encoding=utf-8
set nocompatible
set tabstop=4 shiftwidth=4 expandtab autoindent smartindent
set relativenumber
set number
set incsearch
set splitright splitbelow
set noswapfile nobackup nowritebackup

set mouse=a
set ttymouse=xterm2

syntax enable
set background=dark

filetype off

" Set up plugins
source ~/.vim/plugins

filetype plugin indent on

colorscheme solarized

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

:nnoremap <leader>t :NERDTreeToggle<cr>

" remapping ; to : no shift hell
:nnoremap ; :

" YouCompleteMe with SuperTab
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_use_ultisnips_completer = 0

" YouCompleteMe
:nnoremap <leader>gd :YcmCompleter GoTo<cr>
:nnoremap <leader>gt :YcmCompleter GoToType<cr>
:nnoremap <leader>gc :YcmCompleter GoToDeclaration<cr>
:nnoremap <leader>gf :YcmCompleter GoToDefinition<cr>
:nnoremap <leader>gi :YcmCompleter GoToImplemenation<cr>
:nnoremap <leader>fd :YcmCompleter GetDoc<cr>
:nnoremap <leader>ft :YcmCompleter GetType<cr>
:nnoremap <leader>ff :YcmCompleter FixIt<cr>

" UltiSnips Mapping
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
