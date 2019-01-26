#!/bin/bash

# Script que instala pacotes e dependências básicas para ambiente python
#
# Ainda é um rascunho, apenas para facilitar a instalação básica do ambiente
#
# TODO: Verificar se preciso mesmo instalar para as duas versões de Python
# TODO: Implementar versões utilizando o pyenv

# Instalando pacotes base:

# pip - Gerenciador de pacotes do Python utilizando o PyPi
# setuptools - "Helper" para facilitar o empacotamento e distribuição de pacotes Python
# ipython - Intepretador python 'on steroids'

sudo apt install \
    python3-pip  \
    python3-setuptools \
    ipython

# Aplicando para python2

sudo apt install \
    python-pip \
    python-setuptools

# instalando iPython com Jupyter Notebook
pip3 install wheel # dependência em python que padroniza distribuição de pacotes
pip3 install ipython[notebook]

# Aplicando para python2
pip install wheel
pip install ipython[notebook]
