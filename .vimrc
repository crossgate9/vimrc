set nocompatible

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
source ~/.vim/vimrc.vundle

set bs=indent,eol,start
set history=100
set ruler
set autoread
set nu

filetype off
syntax on
filetype on
filetype indent on
filetype plugin on

autocmd! bufwritepost .vimrc source ~/.vimrc

set hlsearch

if has("gui_running") " GUI color and font settings
  set guifont=Courier:h18
  set background=dark 
  set t_Co=256    " 256 color mode
  set cursorline  " highlight current line
  highlight CursorLine  guibg=#003853 ctermbg=24  gui=none cterm=none
  colors moria
else
  colors evening
endif

set clipboard=unnamed
set showmatch
set showmode
set wildchar=<TAB>
set wildmenu

set wildignore+=.svn,CVS,.git 
set wildignore+=*.o,*.a,*.class,*.mo,*.la,*.so,*.lo,*.la,*.obj,*.pyc
set wildignore+=*.exe,*.zip,*.jpg,*.png,*.gif,*.jpeg

set autoindent
set incsearch
set backup
set backupdir=~/.vim/bak
set copyindent
set ignorecase
set smartcase
set nosmarttab

" disable sound on errors
set noerrorbells visualbell t_vb=
set tm=500

" TAB setting
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

au FileType yaml set expandtab
au FileType Makefile set noexpandtab

" FOLDING
set foldenable
set foldmethod=marker
set foldlevel=0
set foldcolumn=0

set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

fun! CurDir()
  let curdir = substitute(getcwd(), $HOME, "~", "")
  return curdir
endfun

fun! HasPaste()
  if &paste
    return '[PASTE]'
  else
    return ''
  endif
endfun

autocmd FileType c,cpp,cc set cindent



" SHORTCUTS
let mapleader=";"
let g:mapleader=";"

nmap <leader>w :x<CR>
nmap <leader>q :q!<CR>

map <leader>er :bo cope<CR>

