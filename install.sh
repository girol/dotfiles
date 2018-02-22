#!/bin/bash

echo "Installing .vimrc..."
cp .vimrc ~/.vimrc

echo "Preparing Pathogen..."
echo "Creating directories"

mkdir -p ~/.vim/autoload ~/.vim/bundle 

echo "Downloading Pathogen and installing..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo
echo "vimrc installed into $HOME/.vimrc"
echo

