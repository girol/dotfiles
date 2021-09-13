#!/bin/bash

# Installs the very essential packages to start working

echo -e "Installing essential base packages"

sudo apt install ack \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    gnupg \
    make \
    software-properties-common \
    stow \
    vim \
    xclip \
    zsh \
