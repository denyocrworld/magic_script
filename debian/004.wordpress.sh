#!/bin/bash
WEB_EMAIL="denyocr.world@gmail.com"
WEB_DOMAIN="capekngoding.com"

MYSQL_ROOT_PASSWORD="Biznet123"
MYSQL_USER="rootc"
MYSQL_USER_PASSWORD="Biznet123"
MYSQL_DATABASE="master_db"

FTP_USER_NAME="denyocr"
FTP_USER_PASSWORD="Biznet123"

# Install Wordpress
cd /var/www/html
rm -rf index.html
curl -O https://wordpress.org/latest.zip && unzip latest.zip && mv wordpress/* /var/www/html
mysql -u root -e "create database if not exists master_db"

curl "https://raw.githubusercontent.com/denyocrworld/magic_script/master/config/0_wp_config.php?$(date +%s)" -o /var/www/html/wp-config.php
sed -i "s/define('FTP_USER', '\$FTP_USER');/define('FTP_USER', '$FTP_USER_NAME');/" /var/www/html/wp-config.php
sed -i "s/define('FTP_PASS', '\$FTP_PASS');/define('FTP_PASS', '$FTP_USER_PASSWORD');/" /var/www/html/wp-config.php
sed -i "s/define('FTP_HOST', '\$FTP_HOST');/define('FTP_HOST', '$WEB_DOMAIN');/" /var/www/html/wp-config.php
sed -i "s/define('DB_USER', '\$DB_USER');/define('DB_USER', '$MYSQL_USER');/" /var/www/html/wp-config.php
sed -i "s/define('DB_NAME', '\$DB_NAME');/define('DB_NAME', '$MYSQL_DATABASE');/" /var/www/html/wp-config.php
sed -i "s/define('DB_PASSWORD', '\$DB_PASSWORD');/define('DB_PASSWORD', '$MYSQL_USER_PASSWORD');/" /var/www/html/wp-config.php