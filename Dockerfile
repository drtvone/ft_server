FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install vim
RUN apt-get -y install nginx wget php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring
RUN apt-get -y install openssl mariadb-server

RUN openssl req -x509 -nodes -days 365 -subj "/C=RF/ST=Moscow/L=Moscow/O=school21/OU=school21/CN=Rturnip" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt;

RUN mkdir /var/www/run/
WORKDIR /var/www/run/

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english phpmyadmin && rm -rf phpMyAdmin-5.0.1-english
COPY ./srcs/config.inc.php phpmyadmin

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xf latest.tar.gz && rm -rf latest.tar.gz
COPY ./srcs/wp-config.php wordpress

COPY ./srcs/nginx.conf /etc/nginx/sites-available

RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled


COPY ./srcs/autoindex.sh ../../../
COPY ./srcs/init_server.sh ../../../

RUN chmod -R 755 /var/www/html/*
RUN chmod 777 /init_server.sh

EXPOSE 80 443

CMD  ["bash", "/init_server.sh"]
