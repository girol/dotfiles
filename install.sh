#!/bin/bash

echo "Installing .vimrc..."
cp vimrc ~/.vimrc

echo "Preparing Pathogen..."
echo "Creating directories"

mkdir -p ~/.vim/autoload ~/.vim/bundle 

echo "Downloading Pathogen and installing..."
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Preparing Plugins..."

# Adds a beautiful status bar in the bottom
echo "Installing airline"
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# Allows icons inside vim and other plugins
# You MUST install a patched font.
echo "Installing vim-devicons"
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons

# Nice file manager for vim
echo "Installing NERDtree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo "Installing git stuff"

# Git status indicators for files in NERDtree
echo "Installing nerdtree-git-plugin"
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin

# Git plugin that shows which lines have been added, modified, or removed.
echo "Installing vim-gitgutter"
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# A Git wrapper that adds a lot of new commands and "gitties" to vim
echo "Installing vim-fugitive"
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive



echo
echo "vimrc installed into $HOME/.vimrc"
echo

