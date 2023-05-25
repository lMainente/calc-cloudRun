FROM php:7.4-apache

# Copia os arquivos do seu projeto para o contêiner
COPY ./calcfile.php /var/www/html

# Habilita o módulo Apache mod_rewrite
RUN a2enmod rewrite

# Define o arquivo calcfile.php como o arquivo de índice padrão
RUN echo "DirectoryIndex calcfile.php" >> /etc/apache2/apache2.conf

# Expõe a porta do Apache
EXPOSE 80

# Comando para iniciar o Apache quando o contêiner for iniciado
CMD ["apache2-foreground"]
