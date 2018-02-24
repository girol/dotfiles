#!/bin/bash

echo "Installing .vimrc..."
cp vimrc ~/.vimrc

echo "Preparing Pathogen..."
echo "Creating directories"

mkdir -p ~/.vim/autoload ~/.vim/bundle 

echo "Downloading Pathogen and installing..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Preparing Plugins..."

echo "Installing airline"
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

echo "Installing vim-devicons"
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons

echo
echo "vimrc installed into $HOME/.vimrc"
echo

