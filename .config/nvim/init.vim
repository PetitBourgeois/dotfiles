set nocompatible

call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'

call plug#end()

syntax on
syntax enable

"move tabs with gt & gT

let mapleader =","

tnoremap <leader>c <C-\><C-n>

nmap <leader>w :w!<cr>
nmap <leader>q :q<CR>
nmap <leader>ls :ls<CR>
nmap <leader>bf :bnext<CR>
nmap <leader>bb :bprevious<CR>

nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"emmet
imap <M-j> <C-y>,

set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set lazyredraw

set encoding=utf8

filetype plugin on
filetype indent on

set nobackup
set noswapfile

set list
set scrolloff=4
set expandtab
set tabstop=8
set softtabstop=2
set shiftwidth=2

"set smarttab
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2

set smartindent
set autoindent
set copyindent

set showmode
set number relativenumber

map <C-n> :NERDTreeToggle<CR>
