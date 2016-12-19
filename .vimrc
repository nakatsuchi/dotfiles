"Dein.vim
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/dein')
call dein#add('Shougo/dein.vim')
call dein#add('tpope/vim-surround')
call dein#add('bling/vim-airline')
call dein#add('Shougo/vimshell.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('kchmck/vim-coffee-script')
call dein#add('pangloss/vim-javascript')
call dein#add('digitaltoad/vim-jade')
call dein#add('othree/html5.vim')
call dein#add('derekwyatt/vim-scala')
call dein#add('digitaltoad/vim-jade.git')
call dein#add('sudar/vim-arduino-syntax')
call dein#add('tomasr/molokai')
call dein#end()

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

