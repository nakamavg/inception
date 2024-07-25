# Dockerfile
- Un Dockerfile es un archivo que contiene una serie de instrucciones utilizadas por Docker para construir una imagen. Cada instrucción en un Dockerfile ejecuta un comando y genera una nueva capa en la imagen. Estas capas se combinan para formar la imagen final, que se puede usar para ejecutar contenedores.
## From
- Define la imagen base a partir de la cual se construirá tu nueva imagen.
```dockerfile
FROM alpine:3.12
```
- Elegimos una imagen  para nuestro servicio

## COPY
- Copia archivos o directorios desde el sistema de archivos del host a una ruta en el sistema de archivos del contenedor.
## ADD
- Similar a COPY, pero puede extraer archivos TAR y descargar archivos desde una URL.
```dockerfile
ADD https://example.com/file.tar.gz /tmp/
```
## Reglas de Ejecucion:
### RUN, CMD , ENTRYPOINT
#### CMD
Especifica el comando predeterminado que se ejecutará cuando se inicie el contenedor. Solo puede haber una instrucción CMD en un Dockerfile.
#### ENTRYPOINT

Define el ejecutable que se ejecutará cuando se inicie el contenedor. Puede usarse junto con CMD para proporcionar argumentos al ejecutable.
#### RUN
- Ejecuta comandos en la imagen durante la construcción. Cada RUN crea una nueva capa en la imagen.

#### Diferencias entre [CMD, ENTRYPOINT] y RUN

- CMD y ENTRYPOINT se ejecutaran dentro de la imagen ya contruida y run se ejecuta en tiempo de construccion de la imagen 