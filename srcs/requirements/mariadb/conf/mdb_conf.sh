#!/bin/bash

service mariadb start
sleep 5

mariadb -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DB}\`;"
mariadb -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mariadb -e "GRANT ALL PRIVILEGES ON ${SQL_DB}.* TO \`${SQL_USER}\`@'%';"
mariadb -e "FLUSH PRIVILEGES;"

# Shutdown mariadb to restart with new config
mysqladmin --user=root shutdown

# Restart mariadb with new config in the background to keep the container running
exec mysqld --port=3306 \
		--bind-address=0.0.0.0 \
		--datadir='/var/lib/mysql' \
		--user=mysql