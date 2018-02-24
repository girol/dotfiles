#!/bin/bash

echo "Installing .vimrc..."
cp vimrc ~/.vimrc

echo "Preparing Pathogen..."
echo "Creating directories"

mkdir -p ~/.vim/autoload ~/.vim/bundle 

echo "Downloading Pathogen and installing..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Preparing Plugins..."

# Adds a beautiful status bar in the bottom
echo "Installing airline"
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# Allows icons inside vim and other plugins
echo "Installing vim-devicons"
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons

# Nice file manager for vim
echo "Installing NERDtree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo "Installing git stuff"

# Git status indicators for files in NERDtree
echo "Installing nerdtree-git-plugin"
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin

echo
echo "vimrc installed into $HOME/.vimrc"
echo

