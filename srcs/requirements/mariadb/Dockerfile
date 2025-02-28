FROM debian:bullseye

RUN apt update && apt install -y \
	mariadb-server

COPY ./conf/mdb_conf.sh /mdb_conf.sh

RUN chmod +x /mdb_conf.sh

EXPOSE 3306

ENTRYPOINT ["./mdb_conf.sh"]
