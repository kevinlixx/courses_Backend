# JAVA
- fue creado por Sun Microsystems en 1995
- es un lenguaje de programación de alto nivel

## Categorias de Java
### standard edition (SE)
- se refiere a la edición estándar de Java
- es la edición que se utiliza para desarrollar aplicaciones de escritorio y aplicaciones de consola
### enterprise edition (EE)
- se refiere a la edición empresarial de Java
- es la edición que se utiliza para desarrollar aplicaciones web y aplicaciones empresariales

<center>
<img src="https://i.postimg.cc/SRgMtM1X/imagen-2024-07-17-214312047.png">
</center>

## javadoc
- es una herramienta que se utiliza para generar documentación de un proyecto Java
- la documentación se genera en formato HTML
### comentarios
- // comentario de una línea
- /* comentario de varias líneas */
- /** comentario de varias líneas que se utiliza para documentar un método o una clase */

``` java
/**
 * description Clase que representa un libro
 * @param quantity cantidad de libros
 * @param currency moneda
 * @return precio total
 */
```
 <center> <img src="https://static.platzi.com/media/user_upload/Screen%20Shot%202019-07-08%20at%204.29.49%20PM-fbd23e6a-b892-4d33-8ef4-4669d81b63dc.jpg"> </center>


## opciones para detener ciclos
- break: detiene el ciclo
- continue: salta a la siguiente iteración
- return: detiene el ciclo y la ejecución del método

## arreglos
- objetos en los que podemos almacenar varias variables
- se declaran con corchetes []
- se pude tener arreglos de dos dimensiones y de tres dimensiones

    ```java
    // primera forma de declarar un arreglo
    int[] numbers = new int[5]; //tipo de dato [] nombre del arreglo = new tipo de dato [tamaño del arreglo]

    // segunda forma de declarar un arreglo
    int numbers[] = new int[5];
    ```
## indices y busqueda de elementos en un arreglo
- es la manera de identificar la posición de un elemento en un arreglo
- los índices en Java empiezan en 0
- n-1 es el índice del último elemento de un arreglo de tamaño n
- para buscar un elemento en un arreglo se utiliza un ciclo for

## ciclos anidados
- son ciclos dentro de otros ciclos
- se utilizan para recorrer arreglos de dos dimensiones
- se pueden tener ciclos anidados de tres dimensiones
``` java
for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
        System.out.println("i: " + i + ", j: " + j);
    }
}
```
### foreach
- es una forma simplificada de recorrer un arreglo
- se utiliza para recorrer arreglos de una dimensión

``` java
int[] numbers = {1, 2, 3, 4, 5};

for (int number : numbers) {
    System.out.println(number);
}
```



