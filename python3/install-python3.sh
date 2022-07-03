#!/bin/bash

# Installs basic python3 dev dependencies
#
# TODO: Implement Pyenv

sudo apt install \
    python3-pip  \
    python3-setuptools \


pip3 install wheel # dependência em python que padroniza distribuição de pacotes
pip3 install ipython[notebook]
pip3 install virtualenvwrapper
