FROM debian:bullseye

RUN apt -y update && apt install -y \
	nginx \
	openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-out /etc/ssl/nginx-selfsigned.pem \
	-keyout /etc/ssl/nginx-selfsigned.key \
	-subj "/C=ES/ST=Bizkaia/L=Urduliz/O=42/OU=42/CN=xbasabe-42.fr"

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE	443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
