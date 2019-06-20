#!/bin/bash

# Installs basic python dev dependencies
#
# TODO: Implement pyenv

sudo apt install \
    python-pip \
    python-setuptools \
    ipython

pip install wheel
pip install ipython[notebook]
