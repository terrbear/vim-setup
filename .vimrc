if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set mouse=a
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set backup		" keep a backup file
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set sw=2 ts=2
set nowrap
set nu " line numbering
set nows " no wrapping for search

map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set smartindent	
set visualbell
set wildignore=*.class
ab sojs so $VIM/vim61/syntax/jsp.vim

" ruby shiz
filetype on
filetype indent on
filetype plugin on

map  :FuzzyFinderTextMate<CR>

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

"colorscheme underwater
colorscheme ir_black

let g:rsenseHome = "/Users/theath/opt/rsense-0.2"
"this didn't work. at all.
"let g:rsenseUseOmniFunc = 1

