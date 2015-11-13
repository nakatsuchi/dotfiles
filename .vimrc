"NeoBundle
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'git://github.com/Shougo/vimproc.vim', {
      \  'build': {
      \    'mac': 'make',
      \    'unix' : 'make',
      \  },
      \}
NeoBundle 'tpope/vim-surround'
NeoBundle 'git://github.com/mattn/emmet-vim'
NeoBundle 'git://github.com/bling/vim-airline'
NeoBundle 'git://github.com/Shougo/vimshell.vim'
NeoBundle 'git://github.com/Shougo/neocomplete.vim'
NeoBundle 'git://github.com/Shougo/neosnippet.vim'
NeoBundle 'git://github.com/Shougo/unite.vim'
NeoBundle 'git://github.com/Shougo/neomru.vim'
NeoBundle 'git://github.com/Shougo/vimfiler.vim'
NeoBundle 'git://github.com/jpalardy/vim-slime'
NeoBundle 'git://github.com/scrooloose/syntastic'
NeoBundle 'git://github.com/kchmck/vim-coffee-script'
NeoBundle 'git://github.com/pangloss/vim-javascript'
NeoBundle 'git://github.com/digitaltoad/vim-jade'
NeoBundle 'git://github.com/othree/html5.vim'
NeoBundle 'git://github.com/derekwyatt/vim-scala'
NeoBundle 'https://github.com/digitaltoad/vim-jade.git'
NeoBundle 'https://github.com/tomasr/molokai'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

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
nnoremap <silent> ,b :Unite buffer -auto-quit<CR>
nnoremap <silent> ,f :VimFiler<CR>
nnoremap <silent> ,s :VimShell<CR>
nnoremap <silent> ,m :Unite file_mru<CR>
nnoremap <silent> ,r :Unite -buffer-name=register register<CR>
nnoremap <silent> ,g :Unite grep<CR>

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

"VimFiler
let g:vimfiler_safe_mode_by_default = 0 "disable safe mode by default
let g:unite_cursor_line_highlight = 'Normal'

"syntastic
let g:syntastic_cpp_compiler_options='--std=c++1y'

