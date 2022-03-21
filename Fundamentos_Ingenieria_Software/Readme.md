# Fundamentos de Ingeniería de software:

## System on a Chip:

Un System on a Chip (sistema en un chip), también conocido como SoC, es un circuito integrado que incluye dentro de sí todo un sistema electrónico o informático. Es, como su nombre lo indica, un sistema completo que funciona integrado en un solo chip.

Los componentes que un SoC busca incorporar dentro de sí incluyen, por lo general, una unidad central de procesamiento (CPU), puertos de entrada y salida, memoria interna, así como bloques de entrada y salida analógica, entre otras cosas. Dependiendo del tipo de sistema que se haya reducido al tamaño de un chip, puede ejecutar diversas funciones, como el procesamiento de señales, la comunicación inalámbrica o la inteligencia artificial, entre otras.

Ejemplo de System on a Chip
En esta imagen, podemos ver a una Raspberry Pi y todos sus componentes:

<img src="https://static.platzi.com/media/user_upload/raspberry_pi_b--c84316d7-9bb1-4e0d-93a7-19a09158d581.jpg"/>

1. System on a Chip (SoC): un circuito integrado que incorpora muchos componentes de la computadora en un solo chip: la CPU, la memoria y la memoria RAM.

1. Conector de pantalla DSI: se usa para conectar un panel LCD. En el otro lado de la placa hay una ranura para tarjetas microSD que contiene el sistema operativo Disco Duro.

1. Pines GPIO (entrada / salida de propósito general): pasadores utilizados para conectar dispositivos electrónicos. Bus de Datos 1 Byte cada uno.

1. Puerto HDMI: se usa para conectarse a un monitor o TV. HDMI puede transportar sonido e imagen.

1. Puerto Ethernet: un puerto Ethernet estándar de 10/100 Mbit/s que se utiliza para conectar su dispositivo con el resto de la red.

1. Puertos USB: puertos USB 2.0 estándar que se emplean para conectar periféricos, como el teclado y el mouse.

1. Puerto de audio: un conector de 3.5 mm usado para conectar los altavoces.

1. Conector de alimentación micro-USB: se emplea para alimentar la energía de la Raspberry Pi.

1. Chip de interfaz USB y Ethernet

1. Conector de cámara: permite la captura de fotografías y videos.

## Cómo funcionan las correos electronicos:

<img src="https://static.platzi.com/media/user_upload/insofware-1250c431-7bea-425c-a44b-fd9d40cd30f7.jpg">

1. Desde tu computador, en tu servidor de correo, estás redactando un email.

2. Cuando acabas de escribir, le das al botón “Enter”. Este botón manda un impulso eléctrico a tu tarjeta madre, y es procesado por el CPU (Central Processing Unit).

3. Mediante el Sistema Operativo (SO), la señal del CPU se identifica y reconoce. Así nuestro SO sabe lo que significa ese impulso creado por esa tecla especifica del teclado.

4. Como nos encontramos en un navegador web, nuestro sistema operativo le indica que ocurrió un evento, es decir, nuestro Enter.

1. Este evento lo que hace, es tomar todo lo que escribimos en nuestro correo y lo encapsula para enviarlo a un servidor, mediante protocolos ya establecidos.

1. Los servidores son computadoras, y ahí se reciben estos paquetes de datos. Mediante sus bases de datos, asignan este paquete de datos al remitente correspondiente

1. La persona que tiene su correo asociado a este servidor, recibe este paquete encapsulado, ya listo para leer en forma de correo electrónico.

#### Glosario básico necesario para entender como funciona el envío de un correo electrónico

- ASCII= American Standard Code for Information Interchange
- API= Application Program Interface
- AJAX= Asynchronous JavaScript and XML
- JSON= JavaScript Object Notation
- REST= Protocolo preestablecido de envio de datos= Representational State Transfer
- HTTPS= protocolo de transferencia de envio de datos= Hypertext Transfer Protocol
- FTP= File Transfer Protocol
- URL= Unifor Resource Locator
- DNS= Domain Name System
- IP= Internet Protocol
- SMTP= Simple Mail Transfer Protocol
- SoC= System on a Chip
- POP= protocolo de oficina de correo
- UDP= User Datagram Protocol
- HTML= Hypertext markup Language
- CSS= Cascading Style Sheets
- SSH= Secure SHell
- POP3 = Post Office Protocol
## Qué son Bits y Bytes

### Sistema binario
Es una técnica de numeración posicional con base 2, es decir cada una de las posiciones es una potencia del número dos y solo se utilizan ceros y unos como dígitos válidos.

### Bit
El bit es la unidad mínima de información, es un cero, o un uno. Es decir, tiene un impulso eléctrico o no lo tiene.

### Bytes
Un byte está compuesto por ocho bits, cada uno de estos bits tiene un valor posicional y corresponde a uno de los 8 primeros lugares de una tabla de sistema binario. Asi en conjunto el Bytes es el resultado de los 8 bits que lo componen.

De esta manera un byte puede tomar valores entre cero y 256. Cada uno de estos valores representa algún tipo específico de valor y para conocerlo, usamos la tabla ASCII. Cada archivo de texto, cada imagen, cada canción que está en nuestra computadora tiene un peso en bytes, que depende de la cantidad de información que contiene.

1 Bit: Es un 0 o un 1
1 Byte: Son 8 Bit
1 Kilobyte: Son 1024 Bytes
1 Megabyte: Son 1024 Kilobytes
1 Gigabyte: Son 1024 Megabytes
1 Terabyte: Son 1024 Gigabytes

### Como interpreta la computadora los bytes
Los computadores saben que cada 8 bits deben hacer una pausa porque los bytes siempre equivalen a 8 bits.

Existen bytes que son especiales que pueden significar órdenes específicas para el ordenador como pedir que arranque, o que ejecute una operación matemática.

Una imagen realmente es una grilla de píxeles y cada pixel representa a un byte cuyo número es igual a su color. Los emojis se añadieron a la tabla ASCII y cada emoji equivale a 2 bytes.

### Representaciones globales con bytes
Cuando se democratizó el acceso a la computación muchos países por obvias razones tenían idiomas diferentes con distintos caracteres y para solventar eso se creó el protocolo utf-8 que permitió que todo el mundo use la misma lista de caracteres.

Pero existían miles de caracteres que no cabían en 8 bits (utf-8) por lo que se diseñó utf-16 (2 bytes) y como sobro tanto espacio, pues a crear emojis (UNICODE)

