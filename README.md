# Easy way to install Apache, MariaDB, PHP, FTP, Wordpress and LetsEncrypt

### Apache, MariaDB, PHP, FTP, Wordpres, LetsEncrypt
```
curl -o install.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/debian/001.apache-mariadb-php-ftp-wordpress-letsencrypt.sh?$(date +%s)"
```
## 1. Download Script with CURL
<i>**choose one</i>
### Apache, MariaDB, PHP, FTP
```
curl -o install.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/debian/002.apache-mariadb-php-ftp.sh?$(date +%s)"
```

### Apache, MariaDB, PHP, FTP, Wordpress
```
curl -o install.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/debian/003.apache-mariadb-php-ftp-wordpress.sh?$(date +%s)"
```

### LetsEncrypt
```
curl -o install.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/debian/003.letsencrypt.sh?$(date +%s)"
```

### Wordpress
```
curl -o install.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/debian/004.wordpress.sh?$(date +%s)"
```

### .htaccess
```
curl -o install.sh "https://raw.githubusercontent.com/denyocrworld/magic_script/master/debian/005.htaccess.sh?$(date +%s)"
```

## 2. After download with CURL, run this command to configure:
```
nano install.sh
```

## 3. Run Script, and wait:
```
sh install.sh
```