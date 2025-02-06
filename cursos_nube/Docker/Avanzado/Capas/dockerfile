# Capa 1: La imagen base
FROM ubuntu:latest 	

# Capa 2: Ejecuta el update
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/* 

# Capa 4: Copia el contenido del directorio actual al directorio /app
COPY . /app 	

#Capa 5: Ejecuta un comando de terminal
CMD ["echo", "Hello World"]