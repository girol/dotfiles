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
colorscheme elflord
set background=dark

" ==== Spaces and Search ====
"
set ai " enables autoident
set incsearch " enables incremental search
set hlsearch " enables highlighted search


" ------- PLUGINS ---------

" pathogen - enables easy plugin installation
execute pathogen#infect()


" ==== Plugin Tweaks ====

" allows airline bar with cool icons <3
let g:airline_powerline_fonts = 1


" ------- Shortcuts -------

" Shortcut for NERDTree plugin
" Toggles NERDTree on and off
map <C-n> :NERDTreeToggle<CR>

" ------- Langages Related - WIP -------
" sets auto completion for PHP language 
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
