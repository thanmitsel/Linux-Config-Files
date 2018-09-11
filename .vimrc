" VIM Configuration File
" Description: Optimized for C/C++ development
" Author: Thanasis Mitselos

"------------Features-------------------------------
" dont mess with vi
set nocompatible              " be iMproved, required
filetype off                  " required

"--Vundle--
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on
"--Vundle--

"Enable syntax highlighting
syntax on 
"filetype off                  " required
"------------Options----------------------------------
" force vim to source .vimrc 
" (provides place to store project-specific configuration)
set exrc

" restrict usage of some commands in non-default 
" i.e. write to file or execute shell commands
set secure

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" max 110 chars/line
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" filetype detection for C
augroup project 
	autocmd!
	autocmd BufRead,BufNewFile *.h, *.c set filetype=c.doxygen
augroup END

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" turn syntax highlighting on
set t_Co=256

" colorscheme wombat256
" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
