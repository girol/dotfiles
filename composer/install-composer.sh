#!/bin/bash

# This script installs composer to /usr/local/bin
# 
# Performs installer checksum integrity and cleaning
#
# Script source from composer official page with some small tweaks.
#
# Main source:
# https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md


echo -e "Downloading signature and checking integrity:\n"

EXPECTED_SIGNATURE="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE="$(php -r "echo hash_file('SHA384', 'composer-setup.php');")"

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    exit 1
fi

php composer-setup.php 
RESULT=$?
rm composer-setup.php
# debug purposes
#echo $RESULT

echo -e "Moving composer to system wide directory\n"
sudo mv composer.phar /usr/local/bin/composer
