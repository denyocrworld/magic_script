# Install Wordpress
cd /var/www/html
rm -rf index.html
curl -O https://wordpress.org/latest.zip && unzip latest.zip && mv wordpress/* /var/www/html
mysql -u root -e "create database if not exists master_db"
curl https://raw.githubusercontent.com/denyocrworld/magic_script/master/config/0_wp_config.php?$(date +%s) -o /var/www/html/wp-config.php
