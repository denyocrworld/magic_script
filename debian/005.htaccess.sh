#!/bin/bash
WEB_EMAIL="denyocr.world@gmail.com"
WEB_DOMAIN="capekngoding.com"

MYSQL_ROOT_PASSWORD="Biznet123"
MYSQL_USER="rootc"
MYSQL_USER_PASSWORD="Biznet123"
MYSQL_DATABASE="master_db"

FTP_USER_NAME="denyocr"
FTP_USER_PASSWORD="Biznet123"

# Add .htaccess
sudo sh -c "echo '# BEGIN WordPress
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
# END WordPress' > /var/www/html/.htaccess"