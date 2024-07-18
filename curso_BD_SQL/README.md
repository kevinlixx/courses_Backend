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
- `TIMESTAMP`: Almacena una marca de tiempo en formato local.

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

# ¿Como crear una base de datos en SQL?

## Recomendaciones
- Mantener la dorma en la que escribes los nobres de los atributos o tablas, es decir, si empiezas con mayúscula, mantenlo así. 
```sql
CREATE DATABASE nombre_de_la_base_de_datos;
CREATE TABLE nombre_de_la_tabla (
    columna1 tipo_de_dato,
    columna2 tipo_de_dato,
    columna3 tipo_de_dato,
);
```

## ¿Qué considerar al definir atributos de una tabla?
- `Primary key`: Elige una clave única, como un ID autoincremental.
- `Atributos de negocio`: Utiliza claves de negocio para identificación externa.
- `Tipos de datos`: Selecciona tipos adecuados, como INTEGER para IDs y VARCHAR para textos.

## ¿Por qué es importante registrar fechas en las tablas?

- `Trazabilidad`: Incluye `fecha_de_carga` y `fecha_de_modificación` para monitorear cambios y soportar decisiones basadas en datos.
- `Cumplimiento`: Asegura que los datos están actualizados y documentados.

## ¿Cómo relacionar tablas mediante claves foráneas?
- `Foreign key`: Define la relación entre tablas usando `FOREIGN KEY` apuntando a la primary key de otra tabla.
- `Sintaix`: `FOREIGN KEY (columna) REFERENCES tabla(columna)`

> [!NOTE]
> SQL significa Structured Query Language, es un lenguaje de programación que se utiliza para administrar bases de datos relacionales.

# Origen de SQL
<center><img src="https://static.platzi.com/media/user_upload/sql-history-c14862e8-ca98-4280-b5ab-c758f0e2f15c.jpg"></center>

## Características clave de SQL
### Lenguaje de Manipulación de Datos (DML)
SQL permite realizar operaciones básicas de manipulación de datos a través de comandos como:

- `SELECT`: Recuperar datos de una base de datos.
- `INSERT`: Insertar nuevos datos en una tabla.
- `UPDATE`: Modificar datos existentes.
- `DELETE`: Eliminar datos de una tabla

### Lenguaje de Definición de Datos (DDL)

SQL también proporciona comandos para definir y modificar la estructura de la base de datos:

- `CREATE TABLE`: Crear una nueva tabla.
- `ALTER TABLE`: Modificar una tabla existente.
- `DROP TABLE`: Eliminar una tabla.

### Control de Acceso y Transacciones

Con SQL, los usuarios pueden controlar el acceso a los datos y garantizar la integridad de las transacciones a través de comandos como:

- `GRANT y REVOKE`: Controlar permisos de acceso.
- `BEGIN TRANSACTION, COMMIT, y ROLLBACK`: Gestionar transacciones para asegurar la integridad de los datos.

## Manipulación de Datos con SQL
### insertar datos `INSERT INTO`
```sql
INSERT INTO nombre_de_la_tabla (columna1, columna2, columna3)
VALUES (valor1, valor2, valor3);
```
### CONSULTAR DATOS `SELECT`
```sql
buscar toda la tabla
SELECT * FROM nombre_de_la_tabla;
buscar datos específicos
SELECT columna1, columna2
FROM nombre_de_la_tabla
WHERE condicion;
buscar datos con una condición
SELECT * FROM nombre_de_la_tabla
WHERE columna = valor;
```
<center><img src="https://static.platzi.com/media/user_upload/code%20%284%29%20%281%29-307542fb-af44-411f-9478-10c15cfeba59.jpg"></center>

### ACTUALIZAR DATOS `UPDATE`
```sql
UPDATE nombre_de_la_tabla
SET columna_a_modificar = nuevo_valor
WHERE condicion;
```

#### verificar que se actualizo correctamente
```sql
SELECT * FROM nombre_de_la_tabla WHERE columna = valor;
```

### ELIMINAR DATOS `DELETE`
```sql
DELETE FROM nombre_de_la_tabla
WHERE condicion;
```

- Antes de ejecutar un `DELETE`, es importante verificar que la condición sea correcta para evitar eliminar datos de forma accidental.

## ¿Qué es la cláusula WHERE de SQL?
### ¿Cómo usar la sentencia WHERE para consultar datos?
La sentencia WHERE se usa en distintos contextos, como al modificar datos con UPDATE, eliminar datos con DELETE y en consultas con SELECT. Para comenzar, la sintaxis básica del WHERE incluye la palabra reservada, el nombre de la columna y los operadores lógicos. Por ejemplo, para consultar un instructor específico:
``` sql 
SELECT * FROM instructores WHERE INSTRUCTORID = 1;
```
### ¿Cómo utilizar operadores lógicos en MySQL?
Puedes emplear varios operadores lógicos, como el símbolo igual (=) para igualdad y el símbolo de exclamación seguido de igual (!=) para diferencias. Por ejemplo, para excluir un instructor con ID específico:
``` sql 
SELECT * FROM instructores WHERE INSTRUCTORID != 1;
```
### ¿Cómo filtrar datos de texto en MySQL?
Para filtrar datos de texto, utiliza comillas simples alrededor del valor. Por ejemplo, para encontrar un instructor llamado John:
``` sql 
SELECT * FROM instructores WHERE nombre = 'John';
```
### ¿Cómo trabajar con datos numéricos en MySQL?
Los operadores para datos numéricos permiten comparaciones como mayor o menor que. Por ejemplo, para encontrar instructores con salario mayor a 5000 dólares:
``` sql 
SELECT * FROM instructores WHERE salario > 5000;
``` 

### ¿Cómo utilizar el operador BETWEEN en MySQL?
El operador BETWEEN se usa para especificar un rango de valores. Por ejemplo, para encontrar instructores con salario entre 5000 y 9000 dólares:

``` sql 
SELECT * FROM instructores WHERE salario BETWEEN 5000 AND 9000;
```

### ¿Cómo practicar estos operadores en MySQL?
Para practicar, intenta replicar estas consultas en tus propias tablas de la base de datos. Cambia los valores según sea necesario y observa los resultados. Utiliza el BETWEEN para rangos específicos y los operadores lógicos para filtrar datos de texto y números.