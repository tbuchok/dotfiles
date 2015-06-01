" adds pathogen init
execute pathogen#infect()

" indent tabs 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set colorcolumn=80
set noeol
" syntax highlighting
set hls
syntax on
filetype plugin on
filetype indent on
set number
colorscheme github

" case insensitive search
set ic

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" allow for `:find` to expand down based on the present working dir:
set path=$PWD/**
:set wildignore+=**/node_modules/**
autocmd BufRead,BufNewFile *.as set filetype=as3
