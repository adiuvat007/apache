# Usar imagem oficial do PHP com Apache
FROM php:8.2-apache

# Copiar arquivos do site para o Apache
COPY ./public-html/ /var/www/html/

# Expor a porta 80
EXPOSE 80

# Ativar mod_rewrite (opcional, útil para frameworks PHP)
RUN a2enmod rewrite
