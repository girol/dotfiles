#!/bin/bash



echo "==========================="
echo -e "Welcome to ${green}Girol's Dotfiles${clear}"
echo "==========================="

# Error handling (a bit sloppy =^.^=)
trap 'error_handler' ERR

error_handler() {
    #TODO: show error in module
    echo "An error has occured... :("
    exit 1
}