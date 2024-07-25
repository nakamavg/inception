#Especificamos la imagen base que se va a usar 
FROM debian:bullseye
#especificamos la ruta del directorio de trabajo
WORKDIR /mariadb
#Lo siguiente que debemos hacer es actualizar dependencias dentro
#la imagen

# la y es para darle automaticante a yes en cada evento
RUN apt-get update && apt-get upgrade -y

#ahora procedemos a instalar el mariadb 

#install mariadb en el contenedor 
RUN apt-get install -y mariadb-server

COPY . .

EXPOSE 3306

RUN chmod +x mdb-conf.sh
#El comando default va a ser el punto sh
CMD bash mdb-conf.sh