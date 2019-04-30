set nocompatible

call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf'
Plug 'tpope/vim-commentary'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'

call plug#end()

syntax on
set t_Co=256
colorscheme gruvbox

"let mapleader =","
map <Space> <Leader>

tnoremap <leader>c <C-\><C-n>
nnoremap <silent> <esc> :noh<return><esc>

nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>ls :ls<CR>
nmap <leader>bf :bnext<CR>
nmap <leader>bb :bprevious<CR>
nmap <leader>f :FZF<CR>

nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"emmet
imap <M-j> <C-y>,

"emacs
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-h> <BS>
imap <C-d> <Del>
imap <C-e> <End>
imap <C-a> <Home>

set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set lazyredraw

set encoding=utf8

filetype plugin indent on

set nobackup
set noswapfile

set list
set scrolloff=4
set expandtab
set smarttab
set tabstop=8
set softtabstop=4
set shiftwidth=4

autocmd FileType html setlocal sts=2 sw=2
autocmd FileType vue setlocal sts=2 sw=2
autocmd FileType javascript setlocal sts=2 sw=2

"set tabstop=2
"set softtabstop=2
"set shiftwidth=2

set smartindent
set autoindent
set copyindent

set showmode
set number relativenumber

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
