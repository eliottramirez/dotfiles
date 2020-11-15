"Vundle
  set nocompatible
  filetype off

  set rtp+=~/.vim/vundle/Vundle.vim
  call vundle#begin('~/.vim/plugins/')

  Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle
  Plugin 'morhetz/gruvbox'
  Plugin 'yggdroot/indentline'
  Plugin 'scrooloose/syntastic'
  Plugin 'itchyny/lightline.vim'

  call vundle#end()
  filetype plugin indent on
"

"Theme
  set background=dark
  colorscheme gruvbox

  set termguicolors
  if &term == "xterm"
    set t_Co=256
  endif
"

" Lightline
  set laststatus=2
  set noshowmode
  let g:lightline = {'colorscheme': 'gruvbox'}
"

"UI
  set number
  syntax on
  set cursorline
  set cursorcolumn
  set showmatch
"

"Whitespace
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set softtabstop=2
"
