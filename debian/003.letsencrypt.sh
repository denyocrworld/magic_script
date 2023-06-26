#!/bin/bash
WEB_EMAIL="denyocr.world@gmail.com"
WEB_DOMAIN="capekngoding.com"

# SETUP LETSENCRYPT
sudo apt install snapd -y
sudo snap install core
sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --apache --email "$WEB_EMAIL" --domain "$WEB_DOMAIN" --agree-tos --non-interactive
echo "0 3 1 * * /usr/bin/certbot renew --quiet" | crontab -