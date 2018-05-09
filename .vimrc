set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'https://github.com/tommcdo/vim-fubitive.git'
Plugin 'universal-ctags/ctags'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set hidden
set number
set ignorecase
set hlsearch
set wildmenu
set wildmode=list

" Set leader
:nnoremap <SPACE> <Nop>
let mapleader = " "

" Switch buffers with buf# <leader>n
:nnoremap <leader>n <C-^> 

" Close current buffer
:nnoremap <leader>c :bd<CR> 
:nnoremap <leader>C :bd!<CR> 

" Shortcut window functions
:nnoremap <leader>w <C-w>

" Grep for word under cursor, don't go to first match (grep!) and open the
" quickfix list at the bottom.
:nnoremap <leader>f :grep! -rnwI --exclude=tags --exclude-dir={target,logs} -e "<C-R><C-W>" . <CR> :bo cw<CR>

