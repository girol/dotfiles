#!/bin/bash


echo -e "Intalling oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e "Backing up Oh-my-zsh original file"
cp -n ~/.zshrc ~/.zshrc_bak

echo -e "Installing my custom file"
cp zshrc ~/.zshrc

echo -e "DONE"
