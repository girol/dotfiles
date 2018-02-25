" My personal Vim configuration
"
" Author: André Luiz Girol
"
" last update: Feb 24, 2018
"
"
" ------- TL;DR ------- go to 'Basic Customization'
"
" Long time ago, I've starting using vim with the basic:
"
" i -> type, type, type <ESC>:wq
"
" Since the smartest people I know in my life uses vim, 
" I decided to give it a shot.
"
" This is still a work in progress and the install script shipped here
" installs some plugins I loved to use
"
" This is also a vim training, so I can practice &:)

" ------- PLUGINS ---------
" Put your plugin calls as soon as possilbe
" Some themes use plugin managers and you will 
" endo up with a not found message.

" pathogen - enables easy plugin installation
execute pathogen#infect()


" ------- Basic Customization -------
"
" Here I try to group some tweaks by context. A work in progress
" I give small hints of what is what to help rememberance
" 
" I know that there is vimsensible out there, but this is also
" a case study that may be helpful to someone
"
" ==== Syntax and Visuals ====
"
" enables syntax
syntax on
set number " enables line numbers

" Enables a basic theme packed with vim
" I'm still choosing the one I like most
" To play around, use in command mode:
" 
" colorscheme <TAB>

"colorscheme pablo
colorscheme solarized
set background=dark

" ==== Spaces and Search ====
"
set ai " enables autoident
set incsearch " enables incremental search
set hlsearch " enables highlighted search

" ==== Plugin Tweaks ====

" allows airline bar with cool icons <3
let g:airline_powerline_fonts = 1

" adds solarized 256 colors
let g:solarized_termcolors=256

" Makes vim uptates faster. As of version 7.2, the update time is 4000ms.
" This is set to vim-gitgutter get faster when showing edited lines.
" slower numbers gets more glitches
" More information with
"
" :h updatetime
set updatetime=750

" ------- Shortcuts -------

" Shortcut for NERDTree plugin
" Toggles NERDTree on and off
map <C-n> :NERDTreeToggle<CR>

" ------- Langages Related - WIP -------
" sets auto completion for PHP language 
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
