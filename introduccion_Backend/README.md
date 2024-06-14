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

[note]
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