set nocompatible

let mapleader =" "
nmap <leader>w :w!<cr>

"set background=dark
color dracula

map <leader>ls :ls<CR>
map <leader>bf :bnext<CR>
map <leader>bb :bprevious<CR>
map <leader>q :q!<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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
set expandtab
set scrolloff=4
set tabstop=8
set softtabstop=4
set shiftwidth=4

"set smarttab
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2

set smartindent
set autoindent
set copyindent

syntax on
syntax enable
set showmode
set number relativenumber

call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
