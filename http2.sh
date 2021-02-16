sudo apt install apache2
sudo a2enmod http2
sudo apachectl stop
sudo apt install php-fpm
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.4-fpm
sudo a2dismod php7.4
sudo a2dismod mpm_prefork
sudo a2enmod mpm_event
sudo apt install libapache2-mod-php
sudo systemctl restart apache2
