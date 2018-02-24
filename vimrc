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

" enables syntax
syntax on

" Enables a basic theme packed with vim
" I'm still choosing the one I like most
" To play around, use in command mode:
" 
" colorscheme <TAB>

"colorscheme pablo
colorscheme elflord

" enables autoident
set ai

" enables incremental search
set incsearch

" enables highlighted search
set hlsearch



" enables line numbers
set number

" always use spaces instead of tab chars
set expandtab

" sets size of tab
set tabstop=4

" sets auto indentation 
set shiftwidth=4

" sets auto completion for PHP language 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" ------- PLUGINS ---------

" pathogen - enables easy plugin installation
execute pathogen#infect()

" Shortcut for NERDTree plugin
" Toggles NERDTree on and off
map <C-n> :NERDTreeToggle<CR>


" ------- PLUGINS - END ----------

