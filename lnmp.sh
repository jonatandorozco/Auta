#/bin/sh

sudo apt update
sudo apt upgrade -y
sudo apt install nginx -y
sudo apt install php-fpm php-common php-json php-bcmath php-fileinfo php-mbstring php-mysql -y
sudo apt install mysql-server -y