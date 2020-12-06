#/bin/sh
read -p 'Host: ' host
cd /etc/nginx/sites-available
touch $host
cat <<EOM > /etc/nginx/sites-available/$host
server {
    listen 80;
    listen [::]:80;

    root /var/www/$host;
    index index.php index.html;

    server_name $host;

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php7.4-fpm.sock;
    }

    location ~ /\.ht { 
        deny all;
    }
}
EOM