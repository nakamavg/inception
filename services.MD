##### ¿Qué es services?
La clave services en un archivo docker-compose.yml es una sección donde defines los contenedores que componen tu aplicación. Cada servicio es un contenedor que ejecuta una parte específica de tu aplicación. Por ejemplo, puedes tener un servicio para la base de datos, otro para el servidor web, y otro para una aplicación fronten
```yml
services:
  mariadb:
    image: mariadb:user
  nginx:
    image: nginx:user
  wordpress:
    image: wordpress:user

```
Aqui estamos declarando las imagenes que van usar nuestros servicios.

Claves Principales en la Sección services
1. build

Especifica las opciones de construcción para el servicio.

- Contexto de construcción (context): Directorio donde Docker busca el Dockerfile.
- Dockerfile (dockerfile): Nombre del archivo Dockerfile (si no es el predeterminado Dockerfile).
- Argumentos de construcción (args): Variables de entorno que se pasan al proceso de construcción.

```yml
services:
  wordpress:
    build:
      context: ./path
      dockerfile: Dockerfile.dev
      args:
        APP_ENV: development

```
2. container_name

Define el nombre del contenedor.

Si no se especifica, Docker genera uno automáticamente.

3. `ports

Mapea los puertos del host a los puertos del contenedor.

Formato: <host_port>:<container_port>.
```yml
services:
	wordpress:
		build:
		ports:
		 - "8080:80"
		containter_name: my_wordpress
```

4. `volumes``

Montajes de volúmenes para persistir datos o compartir archivos entre el host y el contenedor.
5. `env_file``

Especifica uno o más archivos de entorno para cargar variables de entorno.
```yml
services:
  web:
    env_file:
      - .env
	volumes:
	  - ./data:/var/www/html

```

6. `Networks`

Asigna al contenedor una o mas redes

7. `depends_on`

Especifica dependencias de otros servicios , asegurando que los servicios especificados se inicializan antes que el servicio actual

```yml
services:
  web:
    depends_on:
      - db
	networks:
	  - app-network
```
10. `command`

Sobrescribe el comando predeterminado que se ejecuta en el contenedor.

11. `restart`

Define la política de reinicio para el contenedor.

Opciones: no, always, on-failure, unless-stopped.

```yml
services:
  web:
    restart: always
	command: ["nginx", "-g", "daemon off;"]
```