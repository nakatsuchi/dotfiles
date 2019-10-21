"Dein.vim
if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'tomasr/molokai'
call plug#end()

filetype plugin indent on

"language
language C
set ambiwidth=double
set fileencodings=utf-8,cp932,ucs-bom,iso-2022-jp,euc-jp,default,latin
set encoding=utf-8 "for new files

"colors
set t_ut=
"set t_Co=256
syntax enable
set background=dark
colorscheme molokai

"keymap
nnoremap <silent> ,f :NERDTreeToggle<CR>

let loaded_matchparen = 1

"highlight cursor line
"set cursorline

"disable startup message
set shortmess+=I

"show ruler
set ruler

"indents and tabs
set syn=auto
set showmatch
set expandtab
set syn=auto
set showmatch
set shiftwidth=2
set tabstop=2
set autoindent
"set smartindent

"merge backup dir and swap dir
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimbackup

"share clipboard with system
set clipboard=unnamed

"open other file even if not saved
set hidden

"line numbers
set number

"incremental search
set incsearch

"mouse scroll
set mouse=a
set ttymouse=xterm2

"disable beep
set visualbell

filetype plugin indent on     " required!
filetype indent on

"settings for specific file types
au BufNewFile,BufRead *.py        set nowrap tabstop=4 shiftwidth=4

au BufRead,BufNewFile,BufReadPre *.fsl       set filetype=fsharp
au BufRead,BufNewFile,BufReadPre *.fsy       set filetype=fsharp

"CoffeeScript
au BufRead,BufNewFile,BufReadPre *.coffee    set filetype=coffee

"airline
let g:airline_theme='wombat'

