
# Imagem base: Nginx + PHP-FPM
FROM php:8.2-fpm-alpine

# Instala o Nginx
RUN apk add --no-cache nginx

# Remove configurações padrão do Nginx
RUN rm -rf /var/www/html/* /usr/share/nginx/html/*

# Copia arquivos do projeto para a pasta padrão do Nginx/PHP
COPY . /var/www/html

# Copia configuração customizada do Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Expondo porta padrão
EXPOSE 80

# Inicia PHP-FPM e Nginx juntos
CMD php-fpm & nginx -g 'daemon off;'