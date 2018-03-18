" VIM Configuration - Vincent Jousse
" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim
set nocompatible

" -- Display
set title " Update the title of your window or your terminal
set number " Display line numbers
set ruler " Display cursor position
set wrap " Wrap lines when they are too long

set scrolloff=3 " Display at least 3 lines around you cursor
" (for scrolling)
set guioptions=T " Enable the toolbar
" -- Search
set ignorecase " Ignore case when searching
set smartcase " If there is an uppercase in your search term
" search case sensitive again
set incsearch " Highlight search results when typing
set hlsearch " Highlight search results
" -- Beep
set visualbell " Prevent Vim from beeping
set noerrorbells 
" Backspace behaves as expected
set backspace=indent,eol,start
" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden
" Enable syntax highlighting
syntax enable
" Enable file specific behavior like syntax highlighting and indentation
filetype on

filetype plugin on
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
" Activate pathogen
call pathogen#infect()

" Use the dark version of Solarized
let g:solarized_termcolors=16
set t_Co=16
set background=dark
colorscheme solarized

set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

" Activate the NERDTree when launching vim
" autocmd vimenter * NERDTree

" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3

" Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Rebinding Esc key so we don't have to stretch so far.
inoremap kj <Esc>`^
inoremap lkj <Esc>`^:w<CR>
inoremap ;lkj <Esc>:wq<CR>

let mapleader = ","
