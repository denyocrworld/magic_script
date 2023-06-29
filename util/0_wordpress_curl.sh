#!/bin/bash
curl "https://raw.githubusercontent.com/denyocrworld/magic_script/master/config/0_wp_config.php?$(date +%s)" -o /var/www/html/wp-config.php
sed -i "s/define('FTP_USER', '\$FTP_USER');/define('FTP_USER', '$FTP_USER_NAME');/" /var/www/html/wp-config.php
sed -i "s/define('FTP_PASS', '\$FTP_PASS');/define('FTP_PASS', '$FTP_USER_PASSWORD');/" /var/www/html/wp-config.php
sed -i "s/define('FTP_HOST', '\$FTP_HOST');/define('FTP_HOST', '$WEB_DOMAIN');/" /var/www/html/wp-config.php
sed -i "s/define('DB_USER', '\$DB_USER');/define('DB_USER', '$MYSQL_USER');/" /var/www/html/wp-config.php
sed -i "s/define('DB_NAME', '\$DB_NAME');/define('DB_PASSWORD', '$MYSQL_DATABASE');/" /var/www/html/wp-config.php