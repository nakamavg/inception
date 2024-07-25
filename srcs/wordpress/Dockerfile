# Description: Wordpress Dockerfile

# pull the base image
FROM debian:bullseye

WORKDIR /wordpress
# update and upgrade the system
RUN apt-get update && apt-get upgrade -y

# install the required packages
RUN apt-get install -y curl php php7.4-fpm php-mysql mariadb-client iputils-ping

# copy the wordpress configuration script to the root directory in the container
COPY ./wp_conf.sh .

CMD bash wp_conf.sh