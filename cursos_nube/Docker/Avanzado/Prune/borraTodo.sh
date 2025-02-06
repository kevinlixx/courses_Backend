#!/bin/bash

# Borra todas las imágenes sin etiqueta
docker image prune -a

#Borra todos los contenedores detenidos
docker container prune

#Borra todos los volúmenes no utilizadas
docker volume prune

#Borra todas las imágenes, contenedores y volúmenes no utilizados
docker system prune

#Borra el caché de compilación de Docker
docker builder prune