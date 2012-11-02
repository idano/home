" set up vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'The-NERD-tree'
Bundle 'nerdtree-ack'
Bundle 'Syntastic'
Bundle 'The-NERD-Commenter'

filetype plugin indent on

colorscheme desert
map <C-N> :NERDTreeToggle<CR>
imap <C-N> <ESC>:NERDTreeToggle<CR>

" remember 700 lines"
set history=700

" automatically reload files on change"
set autoread

let mapleader = ","
let g:mapleader = ","

set ruler

set ignorecase " ignore case when searching

set hlsearch "  highlight search results
set incsearch " make search act like browser search
set showmatch " highlight matching braces

syntax enable " enable syntax highlighting
set background=dark

set encoding=utf-8

set wb
set noswapfile

set expandtab " use spaces instead of tabs
set shiftwidth=2 " width of indent
set tabstop=2
set smarttab

set ai " Auto indent
set si " smart indent
set wrap " wrap lines

set nospell
set paste
set cursorline
set cursorcolumn
