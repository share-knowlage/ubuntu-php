#!/bin/bash

# This file installs everything required for a PHP project to work optimally
#
# General documentations related to considerations made when creating this file:
# - https://stackoverflow.com/questions/9522631/how-to-put-a-line-comment-for-a-multi-line-command
# - https://askubuntu.com/questions/909277/avoiding-user-interaction-with-tzdata-when-installing-certbot-in-a-docker-contai
#
# apt-utils is installed to prevent messages from debconf
# php-zip is required for composer to work quickly

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y apt-utils &> /dev/null
apt-get install -y \
    git make php-cli composer \
    php-intl php-mbstring \
    php-curl php-xml \
    php-sqlite3 \
    php-ast \
    php-zip
