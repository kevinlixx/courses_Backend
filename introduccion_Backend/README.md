# Backend
<img src ="https://ecdisis.com/wp-content/uploads/2021/01/WhatsApp-Image-2021-07-30-at-11.03.53.jpeg">

## ¿Como se construye el backend?

- Los usuarios se conectan través del cliente de un dispositivo (ya sea un navegador, dispositivo móvil, etc…).
- Se realiza una solicitud en el frontend a través del cliente.
- En el listado de solicitudes, cada posible solicitud es conocida como un endpoint.
- La API (application programming interface) es la encargada de recibir la solicitud y hacerla llegar al backend, a lo que el frontend espera una respuesta.
- El backend recibe la solicitud y dispara una respuesta con el endpoint correspondiente.
- Las bases de datos porporcionan la información que requiere el backend para satisfacer la solicitud hecha por el cliente.
- Las librerías son herramientas (piezas de código) pre-fabricadas por otros desarrolladores, que pueden ser importadas al proyecto para evitar la necesidad de crear código ya existente (no hay que reinventar la rueda).
- Los framework son un conjunto de librerías que en conjunto conforman un marco de trabajo utilizado para responder a una necesidad específica existente en un proyecto.

## ¿Cómo escoger lenguajes y frameworks para backend?
 Frameworks son herramientas que nos ayuda a ir más ágil y desarrollar nuestro proyecto en el dia a dia. entre ellos tenemos:
<img src="https://i.postimg.cc/wMtqh9n5/imagen-2024-06-12-225739945.png">

## HTTP
HTTP (Hypertext Transfer Protocol) es un protocolo de comunicación utilizado en la World Wide Web para el intercambio de información entre un cliente y un servidor. 
- Es el protocolo principal que permite la transferencia de recursos, como páginas web, imágenes y archivos, a través de Internet. HTTP utiliza una estructura de solicitud y respuesta, donde el cliente envía una solicitud al servidor y este responde con los datos solicitados. 
- Es un protocolo sin estado, lo que significa que cada solicitud se trata de forma independiente, sin tener en cuenta las solicitudes anteriores.

> [!NOTE]
>
>https://http.cat para entender mediante memes los http

<img src="https://i.postimg.cc/R0X4y3BQ/imagen-2024-06-12-230018573.png">

### HTTP Status codes:
<img src="https://miro.medium.com/max/920/1*w_iicbG7L3xEQTArjHUS6g.jpeg">

<img src="https://www.steveschoger.com/status-code-poster/img/status-code.png">

## ¿Qué son las APIs?
Las APIs nos permiten, a través de código, la comunicación entre sistemas. Como backend developers, nos interesan las APIs que son servicio web y corren en el protocolo HTTP. La API utiliza una lista de rutas conocidas como endpoints, que provee las respuestas a las solicitudes del cliente. La solicitud debe ser empaquetada y retornada, y existen distintos tipos de empaquetado: JSON. XML.

<img src="https://static.platzi.com/media/user_upload/7dc50204-6f44-4000-bfe3-1d8677bab50c-caf12dbc-7331-44d8-9131-c2523f325d08.jpg">

### funciones clave:

- Recepción de solicitudes: Las API reciben las solicitudes de los clientes. Estas solicitudes pueden contener información, parámetros o instrucciones específicas sobre lo que el cliente desea realizar.
- Procesamiento de solicitudes: Las API procesan las solicitudes recibidas, verificando la autenticidad y validando los datos, si es necesario. Luego, pasan la solicitud al componente adecuado del backend para su procesamiento.
- Envío de respuestas: Una vez que la solicitud ha sido procesada, las API envían las respuestas correspondientes de vuelta al cliente. Estas respuestas pueden incluir datos solicitados, confirmaciones de acción, errores o cualquier otra información relevante.
- Gestión de errores: Las API también son responsables de gestionar los errores de manera adecuada. Si ocurre algún problema durante el procesamiento de la solicitud, las API deben enviar respuestas de error claras y descriptivas para informar al cliente sobre el problema.

## Estructura de REST API

- API REST es un estandar para desarrollar APIs que funcionan en el protocolo HTTP .
- A través de los endpoints se le pide información al dominio, por lo general, se nos devuelve la información empaquetada en un JSON.
- CRUD es el índice de unas plabras clave, y en el protocolo HTTP tenemos métodos para llevarlas a cabo:
  - Create (crear) → POST.
  - Read (leer) → GET.
  - Update (actualizar) → PUT / PATCH.
  - Delete (eliminar) → DELETE.
- Put envía la totalidad de los datos, mientras que patch envía solo los datos destinados a actualizarse.

<img src="https://i.ibb.co/dgYfBMw/i-Screen-Shoter-20221220115650725.png">

## Insomnia y Postman

### ¿Qué es Insomnia?

Insomnia es un cliente de API popular que permite a los desarrolladores realizar solicitudes HTTP y probar APIs. Proporciona una interfaz fácil de usar para crear y gestionar solicitudes, así como características como autenticación, variables de entorno y generación de código. Con Insomnia, puedes enviar fácilmente solicitudes, ver respuestas y depurar interacciones con la API.

### ¿Qué es Postman?

Postman es otro cliente de API ampliamente utilizado que simplifica el proceso de prueba y documentación de APIs. Ofrece un conjunto completo de herramientas para diseñar, probar y monitorear APIs. Con Postman, puedes crear solicitudes, organizarlas en colecciones y automatizar flujos de trabajo. También proporciona características como historial de solicitudes, scripts de prueba y capacidades de colaboración.

Tanto Insomnia como Postman son herramientas poderosas que ayudan a los desarrolladores a agilizar el desarrollo y prueba de APIs. Ofrecen interfaces intuitivas, características extensas y soporte para varios métodos de autenticación, lo que los hace esenciales para los desarrolladores de backend que trabajan con APIs.

> [!NOTE]
> 
> VSCode tienen una extension que se llama THUNDER CLIENT, hace lo mismo que insomnia o Postman, pero dentro del editor

## La nube

- La nube es donde se alojan los servicios (código) para exponerlos, y que los clientes puedan hacer request (peticiones). Ofrecen servicios para distribuir y desplegar aplicaciones.
- La nube no está en el cielo, no es literalmente una nube, es la computadora de alguien más (tu proveedor). Tinen un CPU, una RAM y un SSD, como cualquier otra computadora.
- Los proveedores poseen granjas de servidores configurados (data centers) ubicadas en diferentes lugares del mundo.
- Mientras más cerca estés al data center que te conectes, experimentarás menor latencia, por lo que los recurso llegarán con mayor rapidez.
- Como parte de esa "nube", según la que escojas, puedes tener tu sistema replicado en diferentes lugares, y elegir en dónde estarán tus sistemas corriendo, y optimizarlos para desplegar tu aplicación.

### Beneficion de la computación de la nube

La computación en la nube, se refiere a la entrega de servicios informáticos a través de Internet, incluyendo almacenamiento, procesamiento y gestión de datos. En lugar de utilizar hardware y servidores locales, las organizaciones pueden acceder a recursos y aplicaciones a través de proveedores de servicios en la nube, lo que permite una mayor flexibilidad, escalabilidad y ahorro de costos. Los servicios en la nube se dividen comúnmente en tres categorías principales:

- IaaS (Infraestructura como Servicio)
- PaaS (Plataforma como Servicio)
- SaaS (Software como Servicio).

Esta tecnología permite a las empresas y desarrolladores concentrarse en la innovación y el desarrollo de sus aplicaciones sin preocuparse por la infraestructura subyacente, facilitando el acceso a potentes capacidades informáticas bajo demanda y mejorando la eficiencia operativa.

<center><img src="https://static.platzi.com/media/user_upload/comparacion%20nubes-db72aad2-9ee8-4a31-b3dc-56e4b0d14e31.jpg"></center>

## DevOps

 DevOps no es un cargo o una persona, es una cultura que agrupa una serie de prácticas y principios para mejorar y automatizar los procesos entre los equipos de desarrollo e infraestructura (IT) para hacer el lanzamiento de software de una manera rápida, eficiente y segura.

 - Existe un workflow (flujo de trabajo) para hacer que el código trabajado de forma local llegue al servidor y exponer el servicio a miles de usuarios.
Las aplicaciones son expuestas a muchas zonas, potencialmente a todo el mundo.
- El request del cliente tiene que estar lo más cerca posible al data center para reducir la latencia, y por ende, el tiempo de respuesta.
- Git es un sistema atómico de control de versiones utilizado para crear repositorios de código. 
- Github es un servicio de repositorios remotos. Centralizamos nuestro código en un repositorio remoto (Github), al que los miembros del equipo de desarrollo equipo aportarán el código. La rama principal (main) tiene todo el código que debe cumplir estándares a través de pruebas, calidad y seguridad.
- Se denomina automation al rol de los desarrolladores que se encargan de realizar las automatizaciones para hacer las verificaciones en el código.
- El servidor de repositorios nos ayuda a reunir desarrollo y operaciones; el repositorio remoto se conecta con la nube, ambos se comunican, y si cumplen con las pruebas, calidad y seguridad, se despliega la app y nos conectamos a esos servidores.
- Así el equipo de desarrollo puede lanzar rápidamente y operar el código en producción, normalmente después se vuelve un flujo:
  - Plan (planificación).
  - Code (código).
  - Build (construcción)
  - Test (pruebas).
  - Release (lanzamiento).
  - Deploy (despliegue).
  - Operate (operar).
  - Monitor (monitorear)

### Tecnologias que se pueden usar en todo el ciclo

<center><img src="https://i0.wp.com/geniusitt.com/wp-content/uploads/2018/08/DevOpstools-1.png?fit=1024%2C543&ssl=1"></center>

## El servidor

- El servidor normalmente podemos implementar diferentes tipos de arquitecturas, existen tres tipos de arquitecturas principales.
- Software as a Service (software como servicio):
No tienes control del estado de red, ni almacenamiento, ni los datos, ni sobre la aplicación en sí, pero puedes hacer uso de su servicio.
- Platform as a Service (plataforma como servicio):
Tienes mayor capacidad de administración, comienzas a gestionar la aplicación y la data. Es la mas común a encontrar como backend developer. Te permite distribuir tu aplicación, el código y controlar la data de la misma (bases de datos).
- Infrastructure as a Service (infraestructura como servicio):
Nos permite una todavía mayor capacidad de manejo. Tenemos que gestionar la aplicación, los datos, pero tambipen el runtine, el sistema operativo, etcétera. El proveedor sigue manejando la virtualización y servidores.
- On-site:
Te encargas absolutamente de todo, no dependes de un proveedor, sino que utilizas directamente el computador físico.

<center><img src="https://learn.microsoft.com/en-us/azure/security/fundamentals/media/shared-responsibility/shared-responsibility.svg"></center>

## Cookies y sesiones

- Almacena información en los navegadores
- Las cookies y sesiones son una tecnología utilizada par almacenar información de los usuarios y luego reconocerles, para brindarles mejores experiencias.
- Las cookies permiten almacenar información importante. Datos como de qué país se conectan, o preferencias como el idioma, o datos de usuario.
- Funcionan de navegador a servidor:
  - Como cliente (navegador) nos conectamos al servidor.
  - Desde el servidor reconocemos al usuario que está entrando y generamos una cookie con ciertas indicaciones de seguridad y la devolvemos para que el navegador comience a trastrearla y la guarde. Así el servidor puede verificar la información en la cookie e identificar a ese usuario.
  - Al estar la cookie almacenada del lado del cliente, al volverse a conectar, el servidor identifica la cookie y va a recordar para retornar una respuesta más apropiada.
  - Las cookies solo sirven entre navegador y servidor, no es compatible con móviles.
  - JWT (Json Web Tokens) es una tecnología que nos permite validar por medio de tokens las mismas características que las cookies pero en dispositivos móviles. Funciona tanto en dispositivos móviles como navegadores.

<center><img src="https://substackcdn.com/image/fetch/w_1200,h_600,c_limit,f_jpg,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2F9222a3c6-96ea-4b9e-b639-617111e8fac4_1920x1040.png"></center>

## Bases de datos
<center><img src="https://i.ytimg.com/vi/YGxrvHGCJ2Y/maxresdefault.jpg"></center>

- A un servidor al que le llegan diferentes tipos de solicitud.
Tenemos lógica de negocio.
Reglas de negocio.
Validación.
Autorización.
- Dentro del servidor hay servicios de backend y servicios de datos corriendo. Puede tener múltiples servicios de cada uno, y cada uno puede consumir más o menos recursos.
- Los servicios de backend tienden a consumir CPU y RAM.
Las bases de datos consumen memoria en disco (HDD o SSD).
- El backend necesia de una base de datos para conseguir información. Los drivers son el medio utilizado para conectar bases de datos con el backend, y cada base de datos en particular tiene su propio driver.
Existen 2 tipos de bases de datos:
- Relacionales (SQL).
  - MySQL.
  - PostgreSQL.
  - ORACLE.
- No relacionales (NoSQL).
  - mongoDB.
  - CASSANDRA.
  - Couchbase.
- Las bases de datos relacionales tienen un lenguaje en común, llamado SQL.
- Esto hace que los frameworks aprovechen dicha carácterística con Object-Relational Mapping.
ORMS es una forma de abstraer la conexión de las bases de datos a través de la programación orientada a objetos. Se enfoca en hacer peticiones a una base de datos de manera agnóstica, permitiendo cambiar sin mucha dificultad a otra base de datos relacional.
- Por lo general el DBA (administrador de bases de datos) gestiona las bases de datos, por lo que no debería caer sobre el backend dicha resposabilidad, por ser bastante extensa en sí misma, pero nunca está de más aprender sobre su gestión.
- Existen servicios terceros que se encargan de la gestión de base de datos.

## Escalamiento 

### Escalamiento vertical.
Es cuando tenemos un servidor y eventualmente el servidor empieza a colapsar, una forma de solucionar el problema es incrementar:

CPU
RAM
Disk

#### Problemas:
- Costos
En un black friday tu puedes escalar la aplicacion, pero algunos provedores no permiten desescalar.
- Disponibilidad -> Solucion, Escalamiento Horizontal
### Escalamiento horizontal
Soluciona el problema de la disponibilidad. Se tienen varias instancias del mismo servidor. Como se tienen distintos servidores ahora se necesita de un LOAD BALANCER

LOAD BALANCER -> Tiene conocimiento de nuestras instancias/servidores (al conjunto de servidores se denomina Clouster). Si un nodo(instancia) se cae, el load balancer se encarga de desviarla. Distribuye las peticiones.

Si tenemos la base de datos local en cada servidor va haber un problema dado que no se tienen sincronizados los datos de las distintas bases de datos de los servidores. SOLUCION Gestionar la base de datos fuera de estos servidores. Quizas como un servidor aparte que sirva como DB.