# Fundamentos de Docker

## Docker 
Herramienta que permite la creación, despliegue y ejecución de aplicaciones utilizando contenedores.

<img src="https://www.statdeveloper.com/wp-content/uploads/2020/06/docker-engine-2.png">

## Diferencia entre contenedor y máquina virtual

<div style="text-align: center;">
  <img src="https://coffeebytes.dev/es/que-es-docker-y-para-que-sirve/images/Diferencias-entre-maquina-virtual-y-docker.png" width="800">
</div>

### Máquina virtual
Es un software que simula un sistema de computación y puede ejecutar programas como si fuera una computadora real.

#### problemas de las maquinas virtuales
- *Peso*: Las máquinas virtuales son pesadas, ya que incluyen un sistema operativo completo.
- *Costo de administración*: Las máquinas virtuales requieren de un sistema operativo completo, lo que implica un mayor costo de administración.

- *Multiples formatos*: Las máquinas virtuales tienen diferentes formatos, lo que puede causar problemas de compatibilidad.

### Contenedor
Es una unidad de software que empaqueta una aplicación y todas sus dependencias, de tal manera que la aplicación se ejecuta de manera rápida y confiable desde un entorno informático aislado.

#### Ventajas de los contenedores
- *Portabilidad*: Los contenedores se pueden ejecutar en cualquier lugar, en cualquier máquina, en cualquier sistema operativo.
- *Fragmentación*: Los contenedores permiten dividir una aplicación en partes más pequeñas y manejables. (microservicios)
- *Escalabilidad* : Los contenedores permiten escalar horizontalmente, es decir, agregar más instancias de la aplicación para manejar la carga.

## Comandos básicos

- `docker version`: Muestra la versión de Docker que está instalada.
- `docker`: Muestra los comandos disponibles en Docker.
- `docker info`: Muestra información detallada del sistema como procesadores, memoria, etc.
- ` docker images`: Muestra las imágenes que están en el sistema.
- `docekr ps`: Muestra los contenedores que están en ejecución.

- `docker <comando> --help`: Muestra la ayuda de un comando específico.

- `docker build -t <nombre_imagen> .`: Construye una imagen a partir de un Dockerfile.
- `docker run <nombre_imagen>`: Ejecuta un contenedor a partir de una imagen.
- `docker rmi -f <nombre_imagen/identificador>`: Elimina una imagen.
    - el `-f` es para forzar la eliminación de la imagen 

<img src="https://lh6.googleusercontent.com/H8mhf23JNy-zCPrLaNs_H4h6K1xLRHv-P0JS4_Ad86xSo7En4tLT3POuOJPrcBNXG5lWDy2Y6fdNzRrzoB9SSLxrHhwrdk-qO28__D19NzO01OkkyBdr7YzZo2K_46HidAoUpmxeW2FOF42uOtAg3Pnfe_gcWafYs7xYywgdFeRdK3kV-p7LfIY7Z9h9tg">

## Dockerfile
Archivo de texto que contiene una serie de instrucciones que permiten construir una imagen de Docker.

### Instrucciones básicas
- tomaremos la plantilla de docker hub de la iamgen de lo que queremos instalar
- `FROM`: Indica la imagen base que se utilizará para construir la nueva imagen.
- `COPY <directorio_local> <directorio_contenedor>`: Copia archivos del sistema local al contenedor.
- `RUN <comando>`: Ejecuta un comando en el contenedor.

## Crear una imagen con dockerfile
- `docker build -t <nombre_imagen>:<tag> .`: Construye una imagen a partir de un Dockerfile.
    - el `-t` es para darle un nombre a la imagen
    - el `tag` es para darle una versión a la imagen
## correr un contenedor
``` bash
docker run -it --rm -d -p 8080:80 --name <nombre_contenedor> <nombre_imagen>:<tag>
```

- el `-it` es para correr el contenedor en modo interactivo y poder ver la salida de la consola
- el `--rm` es para eliminar el contenedor una vez que se detenga
- el `-d` es para correr el contenedor en segundo plano
- el `-p` es para mapear el puerto del contenedor al puerto de la máquina local
- el `--name` es para darle un nombre al contenedor
- el `nombre_imagen` es el nombre de la imagen que se va a correr
- el `tag` es la versión de la imagen que se va a correr

ejemplo:
``` bash
docker run -it --rm -d -p 8080:80 --name webserver servidor_web:1.0
```

## Administrar mis imagenes de docker
docker build - t <nombre_imagen>:<tag> . # Construye una imagen a partir de un Dockerfile.

esto permite discriminar la version de la imagen y asi poder tener varias versiones de la misma imagen

-`dockker images <nombre_imagen>`: Muestra las imagenes que estan en el sistema con el nombre que se le pase

-`docker images --filter=reference='*:<tag>'`: Muestra las imagenes que estan en el sistema con el tag que se le pase

- `docker images --no-trunc`: Muestra las imagenes que estan en el sistema sin truncar la salida
    - el `--no-trunc` Muesta el id completo de la imagen

- `docker images tag <nombre_imagen>:<tag> <nombre_imagen>:<tag_nuevo>` # Cambia el tag de una imagen

- `docker rmi -f <cnombre_imagen:tag>`: Elimina una imagen que tenga el tag que se le pase
    - el `-f` es para forzar la eliminación de la imagen

## Administrar mis contenedores de docker
si tenemos dos contenedores le asignamos un puerto diferente a cada uno para que no haya conflicto

``` bash
docker run -it --rm -d -p 8080:80 --name <nombre_contenedor> <nombre_imagen>:<tag>

docker run -it --rm -d -p 8081:80 --name <nombre_contenedor> <nombre_imagen>:<tag>
```


- `docker ps`: Muestra los contenedores que estan en ejecución
- `docker ps -a`: Muestra todos los contenedores que se han ejecutado
- `docker ps --size`: Muestra el tamaño de los contenedores
- `docker container prune`: Elimina todos los contenedores que esten detenidos

su estructura es:
``` bash
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
```
- `docker stop <nombre_contenedor/identificador>`: Detiene un contenedor que este en ejecución
- `docker start <nombre_contenedor/identificador>`: Inicia un contenedor que este detenido
- `docker stats <nombre_contenedor/identificador>`: Muestra las estadisticas de un contenedor

## Configurar volumenes
los volumenes son una forma de persistir la información de un contenedor

- `docker run -it --rm -d -p 8080:80 -v <directorio_local>:<directorio_contenedor> --name <nombre_contenedor> <nombre_imagen>:<tag>`: Crea un volumen en un contenedor
    - el `-v` es para crear un volumen
    - el `directorio_local` es el directorio de la maquina local
    - el `directorio_contenedor` es el directorio del contenedor

tambien se puede crear un volumen en dockerfile con el comando `VOLUME <directorio_contenedor>`

## Configurar redes basicas en docker

- `docker inspect <nombre_contenedor>`: Muestra la información detallada de un contenedor, incluido su network
- `docker network ls`: Muestra las redes que estan en el sistema
    - Tiene diferentes categorias de redes
        - `bridge`: Es la red por defecto de docker
        - `host`: El contenedor comparte la red con la maquina local
        - `none`: El contenedor no tiene red

- `docker network create --driver bridge <nombre_red>`: Crea una red en docker

## Docker hub
es un repositorio de imagenes de docker que se pueden descargar y subir imagenes 

- `docker build -t <usuario_dockerhub>/<nombre_imagen>:<tag> .`  Construye una imagen a partir de un Dockerfile,sabiendo a que usuario de docker hub se va a subir

- `docker push <usuario_dockerhub>/<nombre_imagen>:<tag>`: Sube una imagen a docker hub
- `docker pull <usuario_dockerhub>/<nombre_imagen>:<tag>`: Descarga una imagen de docker hub

## Inspeccion y capas de un contenedor

- `dccker run --name <nombre_contenedor> -it --rm <nombre_imagen>:<tag> /bin/bash`: Crea un contenedor y se conecta a el en modo interactivo

## Guardar y recuperar imagenes Docker

- `docker save <bombre_imagen> > <nombre_archivo>.rar`: Guarda una imagen en un archivo comprimido
- `docker load --input <nombre_archivo>.rar`: Carga una imagen de un archivo comprimido en docker

## Docker compose
es una herramienta que permite definir y ejecutar aplicaciones multi-contenedor

<img src="https://miro.medium.com/v2/resize:fit:800/1*ltc8W2kSyH7I-KidlugYNQ.png">

se debe crear un docker-compose.yaml con la siguiente estructura
``` yaml
version: '3.8'
services:
  <nombre_servicio>:
    image: <nombre_imagen>:<tag>
    build:
        context: ./<directorio_dockerfile>
        dockerfile: Dockerfile
    ports:
      - "<puerto_local>:<puerto_contenedor>"
  <nombre_servicio>:
    image: <nombre_imagen>:<tag>
    build:
        context: ./<directorio_dockerfile>
        dockerfile: Dockerfile
    ports:
      - "<puerto_local>:<puerto_contenedor>"
    depends_on:
      - seiceName: <nombre_servicio que depende>

```
> [!NOTE]
>
>tener en cuenta que el archivo docker-compose.yaml debe estar bien identado

ejemplo:
``` yaml
version: '3.8'
services:
  backend: 
    image: backend:1.0
    build:
        context: ./backend
        dockerfile: Dockerfile
    ports:
      - "8080:80"
  frontend:
    image: frontend:1.0
    build:
        context: ./frontend
        dockerfile: Dockerfile
    ports:
      - "8081:80"
    depends_on:
      - backend
```

- `docker-compose up -d`: Crea y ejecuta los contenedores definidos en el archivo docker-compose.yaml
    - el `-d` es para correr los contenedores en segundo plano
 Por 
> [!NOTE]
>
> dentro los contenedores depara confirmar la conexion debes ejecutar un cutl< --location <'<nombre_doker_compose>_<nombre_servicio>:<puerto_contenedor>/ruta>`'>
> debido a que los contenedores se comunican por el nombre del servic io
>









