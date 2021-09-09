" My personal Vim configuration
"
" Author: André Luiz Girol
"
" last update: Sep, 2021

" ------- PLUGIN INSTALLATION ---------

" Put your plugin calls as soon as possilbe
" Some themes use plugin managers and you will
" end up with a 'not found' message.

" vim-plug - enables easy plugin installation with git versioning

call plug#begin('~/.vim/plugged')

" Maybe the perfect one is Dracula?"
Plug 'dracula/vim', { 'as': 'dracula' }

" Adds a beautiful status bar in the bottom
Plug 'vim-airline/vim-airline'

" Allows icons inside vim and other plugins
Plug 'ryanoasis/vim-devicons'

" Nice file manager for vim
Plug 'scrooloose/nerdtree'

" ==== GIT ===="

" Git status indicators for files in NERDtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git plugin that shows which lines have been added, modified, or removed.
Plug 'airblade/vim-gitgutter'

" A Git wrapper that adds a lot of new commands and 'gitties' to vim
Plug 'tpope/vim-fugitive'

call plug#end()

" ====== Plugin Tweaks ======

" allows airline bar with cool icons <3
let g:airline_powerline_fonts = 1

" airline theme:
let g:airline_theme='dracula'

" adds 256 colors in terminal. Default is 16. Just in case
let g:dracula_termcolors=256

" High contrast baby!
let g:dracula_contrast_dark='hard'


" ------- CUSTOMIZATION -------
"
" Here I try to group some tweaks by context. A work in progress.
" I give small hints of what is what to help rememberance.
"
" I know that there is vimsensible out there, but this is also
" a case study that may be helpful to someone.


" ==== Syntax and Visuals ====
" If you use 'syntax on' it will override your configs. See :help syntax

syntax enable
set number         " enables line numbers

" ==== Spaces and Tabs ====

set ai             " enables autoident
set expandtab      " expands tabs to spaces
set tabstop=4      " size of tabs
set shiftwidth=4   " size of 'autoidenter'<< and >>
set softtabstop=4  " some mojo I'm still testing

" ==== Search Behavior ====

set incsearch   " incremental search. Pointer moves while you type
set hlsearch    " Highlight what you search

" Changes vim refresh rate. As of version 7.2, the refresh rate is 4000ms.
" This is set to vim-gitgutter get faster when showing edited lines.
" slower numbers gets more glitches. See :help updatetime
set updatetime=2000

" ------- Shortcuts -------

" Toggles NERDTree on and off
map <C-n> :NERDTreeToggle<CR>

" ------- Theme -------

" You *MUST* set up the background before the colorsheme.
" Otherwise will cause some issues. It took me hours to figure.
set background=dark
colorscheme dracula
