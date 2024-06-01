#!/bin/bash

# Installs the very essential packages to start working
# also creates base dirs for other packages, like neovim

echo -e "Installing essential base packages"

sudo apt install ack \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    gnupg \
    libcurl4-openssl-dev \
    libmysqlclient-dev \
    libssl-dev \
    make \
    software-properties-common \
    stow \
    vim \
    xclip \
    zsh \

echo "---> Creating ~/.config folder"
mkdir ~/.config