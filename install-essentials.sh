#!/bin/bash

# Installs the very essential packages to start working

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
