FROM php:8.0-apache
WORKDIR /var/www/html

COPY index.php index.php
COPY .htaccess .htaccess

# enabling mod_rewrite
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
EXPOSE 80

