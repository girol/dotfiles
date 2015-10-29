" .vimrc basic file use

" last update: 29/10/2015

" ------- PLUGINS ---------

" pathogen - enables easy plugin installation
execute pathogen#infect()

" Shortcut for NERDTree plugin
" Toggles NERDTree on and off
map <C-n> :NERDTreeToggle<CR>


" ------- PLUGINS - END ----------

" enables autoident
set ai

" enables incremental search
set incsearch

" enables highlighted search
set hlsearch



" enables syntax
syntax on

" enables basic theme (packed with vim)
colorscheme evening

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
