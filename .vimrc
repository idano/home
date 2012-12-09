"set up vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'The-NERD-tree'
Bundle 'Syntastic'
Bundle 'Zenburn'
Bundle 'ctrlp.vim'

filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

filetype plugin indent on

map <Leader>n :NERDTreeToggle<CR>
imap <Leader>n <ESC>:NERDTreeToggle<CR>

nnoremap <Leader>b :buffers<CR>:buffer<Space>
"map <Leader>b :FufBuffer<CR>
"imap <Leader>b <ESC>:FufBuffer<CR>
noremap ,1 :1b<Esc>
noremap ,2 :2b<Esc>
noremap ,3 :3b<Esc>
noremap ,4 :4b<Esc>
noremap ,5 :5b<Esc>
noremap ,6 :6b<Esc>
noremap ,7 :7b<Esc>
noremap ,8 :8b<Esc>
noremap ,9 :9b<Esc>
noremap ,0 :0b<Esc>

" remember 700 lines"
set history=700

" automatically reload files on change"
set autoread

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
" set paste " conflicts with FuzzyFinder
set cursorline
set cursorcolumn
colorscheme zenburn
let g:ctrlp_max_files=100000
let g:ctrlp_clear_cache_on_exit = 0
