#!/bin/bash

echo -e "Installing base packages"

sudo apt install ack \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    gnupg \
    make \
    software-properties-common \
    vim \
    xclip \
    zsh \

echo -e "Copying git config"
cp ./gitconfig ~/.gitconfig
