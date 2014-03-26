set nocompatible

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'vim-scripts/indent-motion'
Plugin 'scrooloose/syntastic'

set bs=2
set history=50
set ruler
set autoread

filetype off
syntax on
filetype on
filetype indent on
filetype plugin on

autocmd! bufwritepost .vimrc source ~/.vimrc

set hlsearch
set autoindent
set incsearch
set nobackup
set copyindent
set ignorecase
set smartcase
set smarttab

set expandtab
set softtabstop=3
set shiftwidth=3
