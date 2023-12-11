let mapleader = " "

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set nu relativenumber
set vb t_vb=

filetype plugin on
syntax on

set incsearch
set hlsearch

set bg=dark
set hlsearch
set incsearch
"set clipboard=unnamedplus

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"set fileformat=unix

set nocompatible
set termguicolors
colorscheme catppuccin_macchiato
let g:airline_theme = 'catppuccin_mocha'

set encoding=utf-8
set wildmode=longest,list,full

set splitbelow splitright

nnoremap <leader>pv :Ex<CR>
nnoremap <leader>no :nohl<CR>
nnoremap <F5> :term<CR>"C:\Program Files\CodeBlocks\MinGW\bin\gcc.exe"
nnoremap <F6> :term<CR>./c.exe<CR>
