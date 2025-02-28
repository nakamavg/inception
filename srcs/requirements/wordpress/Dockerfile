FROM debian:bullseye

RUN apt -y update && apt install -y \
	curl \
	mariadb-client \
	netcat \
	php \
	php-mysql \
	php7.4-fpm

COPY ./conf/wp_conf.sh /

RUN  chmod +x wp_conf.sh

RUN mkdir -p /var/www/wordpress

EXPOSE 9000

ENTRYPOINT ["./wp_conf.sh"]
