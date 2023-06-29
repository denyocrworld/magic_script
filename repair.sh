#!/bin/bash
WEB_EMAIL="denyocr.world@gmail.com"
WEB_DOMAIN="capekngoding.com"

MYSQL_ROOT_PASSWORD="Biznet123"
MYSQL_USER="rootc"
MYSQL_USER_PASSWORD="Biznet123"
MYSQL_DATABASE="master_db"

FTP_USER_NAME="denyocr"
FTP_USER_PASSWORD="Biznet123"

curl -o wordpress_curl.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/util/0_wordpress_curl.sh?$(date +%s)"
sh wordpress_curl.sh