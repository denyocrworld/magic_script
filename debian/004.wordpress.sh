# Install Wordpress
cd /var/www/html
rm -rf index.html
curl -O https://wordpress.org/latest.zip && unzip latest.zip && mv wordpress/* /var/www/html
mysql -u root -e "create database if not exists master_db"
curl https://gist.githubusercontent.com/denyocrworld/50270efd7edad8d87a1b2d7685254aed/raw/5a5cfd8080d55b0de5b3ee3c2ac6c85a9d18d3be/wp-config.example.php -o /var/www/html/wp-config.php
