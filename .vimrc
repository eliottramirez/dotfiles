"Vi iMproved necesario
set nocompatible

" ---------------------------------------VUNDLE----------------------------------------------
filetype off
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Pass a path where Vundle should install plugins
call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ==== My Plugins
" Theme 24bit
Plugin 'morhetz/gruvbox'
" Elixir Plugin
Plugin 'elixir-editors/vim-elixir'
" Syntaxis checker
Plugin 'scrooloose/syntastic'
" Statusbar chula
Plugin 'itchyny/lightline.vim'

" Papercolor Theme -  Plugin 'NLKNguyen/papercolor-theme'
" ===== All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" -------------------------------------------------------------------------------------------

" No me acuerdo que hacen
set autoindent
set copyindent
set title

set number " Set line numbers

set cursorline " Highlight current line
set cursorcolumn " Highlight current column

set showmatch " Highlight matching [{()}]

syntax on " Enable syntax highlighting

set termguicolors
if &term == "xterm"
  set t_Co=256
endif

" Lightline settings
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
    \ }

" PaperColor Theme settings
"let g:PaperColor_Theme_Options = {
"  \   'theme': {
"  \     'default': {
"  \	  'allow_bold': 1,
"  \	  'allow_italic':1
"  \     }
"  \   }
"  \ }

set background=dark
colorscheme gruvbox

" Set tab = 4 spaces
set expandtab "Tabs are spaces
set tabstop=4 "Number of visual spaces per TAB
set shiftwidth=4
set smarttab

" Allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
