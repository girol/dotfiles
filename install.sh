#!/bin/bash
# let's env it:
. ./env
# Nice colors
. ./colors

echo "==========================="
echo -e "Welcome to ${green}Girol's Dotfiles${clear}"
echo "==========================="

# Error handling (a bit sloppy =^.^=)
trap 'error_handler' ERR

error_handler() {
    #TODO: show error in module
    echo -e "${red} [ ERROR ] ${clear} An error has occured... :("
    exit 1
}