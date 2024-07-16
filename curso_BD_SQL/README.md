# Buenas practicas de BD con SQL
- la normalización de una base de datos es un proceso que se lleva a cabo para organizar una base de datos de manera eficiente.
## ¿Que es la primera forma normal?
- La primera forma normal (1FN) es una forma normal de una base de datos relacional. Se dice que una tabla está en la primera forma normal si y solo si no hay dos filas con el mismo valor en la misma columna.
## ¿Que es la segunda forma normal?
- La segunda forma normal (2FN) es una forma normal de una base de datos relacional. Se dice que una tabla está en la segunda forma normal si y solo si está en la primera forma normal y todos sus atributos no clave dependen completamente de la clave primaria.
## ¿Que es la tercera forma normal?
- La tercera forma normal (3FN) es una forma normal de una base de datos relacional. Se dice que una tabla está en la tercera forma normal si y solo si está en la segunda forma normal y no hay dependencias transitivas, es decir .
### Ejemplo practico

<center><img src="https://i.postimg.cc/y6R9cwXv/imagen-2024-06-25-145156960.png"> </center>

#### segunda forma 
- separamos los cursos de los estudiantes en una tabla aparte
<center><img src="https://i.postimg.cc/Y92wxcTZ/imagen-2024-06-25-145601680.png"> </center>


### Tercera forma
- separamos los estudiantes en una tabla aparte y creamos una tabla en medio que relacione los cursos con los estudiantes
<center><img src="https://i.postimg.cc/fRLt8L0j/imagen-2024-06-25-145833823.png"> </center>


## ¿Que es la cuarta forma normal?
- La cuarta forma normal (4FN) es una forma normal de una base de datos relacional. Se dice que una tabla está en la cuarta forma normal si y solo si está en la tercera forma normal y no hay dependencias multivaluadas.


## ¿Que es la quinta forma normal?
- La quinta forma normal (5FN) es una forma normal de una base de datos relacional. Se dice que una tabla está en la quinta forma normal si y solo si está en la cuarta forma normal y no hay dependencias de unión.

# tipos de datos SQL
## numéricos
- `INT`: Número entero de 4 bytes.
- `TINYINT`: Número entero de 1 byte.
- `SMALLINT`: Número entero de 2 bytes.
- `MEDIUMINT`: Número entero de 3 bytes.
- `DECIMAL`: Número decimal de precisión fija.
    - se usa para almacenar valores decimales exactos.
    - el formato es `DECIMAL(p, s)` donde `p` es el número total de dígitos y `s` es el número de dígitos después del punto decimal.
- `FLOAT`: Número decimal de precisión flotante.
- `DOUBLE`: Número decimal de precisión doble.

## cadenas de texto
- `CHAR(n)`: Cadena de texto de longitud fija de n caracteres.
- `VARCHAR(n)`: Cadena de texto de longitud variable de n caracteres.

>[!NOTE]
>a nivel de procesamiento de datos, es mejor usar `VARCHAR` ya que no se desperdicia espacio en memoria.

- `TEXT`: Cadena de texto de longitud variable de hasta 65,535 caracteres.
 - se usa para almacenar texto largo como un párrafo o una descripción.

## fechas y horas
- `DATE`: Almacena una fecha en formato 'YYYY-MM-DD'.
- `TIME`: Almacena una hora en formato 'HH:MM:SS'.
- `DATETIME`: Almacena una fecha y hora en formato 'YYYY-MM-DD HH:MM:SS'.
- `TIMESTAMP`: Almacena una marca de tiempo en formato 'YYYY-MM-DD HH:MM:SS'.

## Datos Booleanos
- `BOOLEAN`: Almacena valores TRUE o FALSE.
  - Tamaño: 1 byte (aunque esto puede variar según el sistema de bases de datos).
## Tipos de Datos Espaciales
- `GEOMETRY`: Almacena datos geométricos.
    - Tamaño: Variable, depende del contenido.
- `POINT`: Almacena un punto en un espacio geométrico.
    - Tamaño: Variable, depende del contenido.
- `LINESTRING`: Almacena una línea en un espacio geométrico.
    - Tamaño: Variable, depende del contenido.
- `POLYGON`: Almacena un polígono en un espacio geométrico.
    - Tamaño: Variable, depende del contenido.
## Tipos de Datos JSON y XML
- `JSON`: Almacena datos en formato JSON.
    - Tamaño: Variable, depende del contenido.
- `XML`: Almacena datos en formato XML.
    - Tamaño: Variable, depende del contenido.
## Tipos de Datos UUID
- `UUID`: Almacena identificadores únicos universales.
    - Tamaño: 16 bytes.

# filtrar y ordenar datos SQL (like)

## palabras reservadas 
- facilita el trabajo de depuración y limpieza
- permite comparar más rápido la información 

- %z permite consultar palabras que termine con la letra z
- `z%` permite consultar las palabras que empiezan con la letz
- `%Z% Si la letra está ubicada en cualquier lugar 
 ``` SQL
SELECT* FROM STUDENTS WHERE LASTNAME LIKE 'J%' 
```

- es bueno filtrar las busqueda con solo los campos que necesitamos 
- ejemplo 
``` SQL
SELECT FIRSTNAME , LASTNAME FROM STUDENTS WHERE LASTNAME LIKE '%O%'

```

