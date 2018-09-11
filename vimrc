" My personal Vim configuration
"
" Author: André Luiz Girol
"
" last update: Feb  , 2018
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
" end up with a 'not found' message.

" vim-plug - enables easy plugin installation with git versioning

call plug#begin('~/.vim/plugged')

" Searches github "

" Old theme. Too dark, low contrast...
" Plug 'altercation/vim-colors-solarized' 

" My actual theme... Still looking for the perfect one" 
Plug 'zacanger/angr'

" Adds a beautiful status bar in the bottom
Plug 'vim-airline/vim-airline'

" Allows icons inside vim and other plugins
" You MUST install a patched font.
Plug 'ryanoasis/vim-devicons'

" Nice file manager for vim
Plug 'scrooloose/nerdtree' 

"git stuff"

" Git status indicators for files in NERDtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git plugin that shows which lines have been added, modified, or removed.
Plug 'airblade/vim-gitgutter'

" A Git wrapper that adds a lot of new commands and "gitties" to vim
Plug 'tpope/vim-fugitive'

call plug#end()


" ------- Basic Customization -------
"
" Here I try to group some tweaks by context. A work in progress.
" I give small hints of what is what to help rememberance.
" 
" I know that there is vimsensible out there, but this is also
" a case study that may be helpful to someone.
"
" ==== Syntax and Visuals ====

" If you use 'syntax on' it will override your configs. See :help syntax
syntax enable 
set number " enables line numbers

" ==== Spaces and Tabs ====

set ai " enables autoident
set expandtab " expands tabs to spaces
set tabstop=4 " size of tabs
set shiftwidth=4 " size of 'autoidenter'<< and >>
set softtabstop=4 " some mojo I'm still testing

" ==== Search Behavior ====

" enables incremental search, search moves while you type
set incsearch 

" enables highlighted search. Highlight what you search
set hlsearch 

" ------- Plugin Tweaks -------

" allows airline bar with cool icons <3 - Install a Patched font
let g:airline_powerline_fonts = 1

" adds solarized 256 colors in terminal. Default is 16.
let g:solarized_termcolors=256

" Changes vim refresh rate. As of version 7.2, the refresh rate is 4000ms.
" This is set to vim-gitgutter get faster when showing edited lines.
" slower numbers gets more glitches. See :help updatetime
set updatetime=2000

" ------- Shortcuts -------

" Shortcut for NERDTree plugin
" Toggles NERDTree on and off
map <C-n> :NERDTreeToggle<CR>


" ------- TODO: Languages Related  -------

" sets auto completion for PHP language 
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" ------- Themes -------

" Solarized is installed with this script
" If you dont like it, comment next lines
" You *MUST* set up the background before the colorsheme.
" Otherwise will cause some issues. It took me hours to figure.
set background=dark
colorscheme angr

" ------- Interface Tweaks ------
" Deixa o contador de linhas em cinza
highlight LineNr ctermfg=grey
