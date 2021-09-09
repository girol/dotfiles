#!/bin/bash
source ./colors

echo "==========================="
echo -e "Welcome to ${green}Girol's Dotfiles${clear}"
echo "==========================="

trap 'error_handler' ERR

error_handler() {
    #TODO: show error in module
    echo -e "${red} [ ERROR ] ${clear} An error has occured... :("
    exit 1
}