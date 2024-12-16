# Curso POO de JAVA

<img src="https://static.platzi.com/media/user_upload/01%20-%20Programaci%C3%B3n%20orientada%20a%20objetos%20en%20Java-a0c43846-f035-46d1-8cc1-71e4e588ac7c.jpg">

<img src="https://static.platzi.com/media/user_upload/%C2%BFQu%C3%A9%20es%20un%20Objeto-47c35a48-0599-4e3d-acf0-084b27d007fc.jpg">
<img src="https://static.platzi.com/media/user_upload/Abstracci%C3%B3n%20%C2%BFQu%C3%A9%20es%20una%20Clase-7e98057e-c31c-40af-bcfd-7d73521da6f9.jpg">
<img src="https://static.platzi.com/media/user_upload/Modularidad-ea08d72d-0553-4f7a-893f-e2d22e88f69f.jpg">
<img src="https://static.platzi.com/media/user_upload/1-b0c5f4e2-22db-4ed5-bbea-19a832d3d594.jpg">
<img src="https://static.platzi.com/media/user_upload/M%C3%A9todo%20constructor-ff56dc1a-2761-4ff8-b2f8-9a22bbaf5520.jpg">

## Variables y Metodos estaticos
las variables y metodos estaticos son aquellos que pertenecen a la clase y no a los objetos, es decir, si modificamos una variable estatica en un objeto, se modificara en todos los objetos de la clase.

```java
public class Persona {
    public static int contadorPersonas;
    public static final double VERSION = 1.0;
    public String nombre;
    public int id;

    public Persona(String nombre) {
        this.nombre = nombre;
        Persona.contadorPersonas++;
        this.id = Persona.contadorPersonas;
    }

    public static void saludar() {
        System.out.println("Hola desde un metodo estatico");
    }
}
```
- Los métodos y variables estáticos nos ayudan a ejecutar o conseguir algún código desde clases no han sido instanciadas, ya que sus valores se guardan en la memoria de nuestro programa, no en diferentes objetos instanciados a través de una clase.

- Las variables estáticas mantienen su valor durante todo el ciclo de vida de nuestro programa, por lo tanto, podemos alterar los valores de una variable estática desde una clase y consumir su valor alterado desde otra sin necesidad de conectar ambas clases.

- También podemos importar los métodos estáticos de una clase para usarlos sin necesidad de escribir el nombre de la clase:

```java
import static com.anncode.operaciones.Calculadora.*
import static java.lang.Math.*

public class Principal {
  public static void (String[] args) {
    int number = suma(3, 5);
    System.out.println(number + PI);
  }
}


```

