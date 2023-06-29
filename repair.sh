#!/bin/bash
EXPORT WEB_EMAIL="denyocr.world@gmail.com"
EXPORT WEB_DOMAIN="capekngoding.com"

EXPORT MYSQL_ROOT_PASSWORD="Biznet123"
EXPORT MYSQL_USER="rootc"
EXPORT MYSQL_USER_PASSWORD="Biznet123"
EXPORT MYSQL_DATABASE="master_db"

EXPORT FTP_USER_NAME="denyocr"
EXPORT FTP_USER_PASSWORD="Biznet123"

curl -o wordpress_curl.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/util/0_wordpress_curl.sh?$(date +%s)"
sh wordpress_curl.sh