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

### Procesadores y arquitectura de CPU

Sin importar la marca o tamaño, los computadores tienen componentes principales similares. Es necesario conocer estos componentes y sus características para poder tomar una buena decisión sobre cuál comprar, basándonos en el uso que le vamos a dar.

- CPU - Central Processing Unit: Procesador central (con marcas como Intel, AMD). Para conocer la capacidad de tu CPU te guías por los GHz (velocidad a la que procesan una instrucción) y Cores (# de CPU’s en un mismo chip, cuantas instrucciones pueden hacer al mismo tiempo).Materiales: Silicio, grafeno..

- BIOS: Chip especial que está instalado en la tarjeta madre, es un sistema operativo de arranque. Cuando arranca intenta detectar todas las cosas que están conectadas a un computador.

- Disco Duro: Es dónde se guarda toda la información, es dónde está el sistema operativo.

- RAM - Random Access Memory: Es un tipo de intermediario entre el Sistema Operativo que está en el disco duro y el CPU. Es una memora de alta velocidad (memoria volátil), solo funciona cuando hay electricidad.

- Memristor: Pieza electrónica que logra guardar la onda eléctrica que pasa por ella incluso cuando se desconecta. Es posible que sea el reemplazo del disco duro y la memoria RAM en el futuro.

- Periféricos: Pantalla, teclado, mouse, puertos, etc.

- Drivers: Convierte la interacción de los accesorios periféricos en Bits y Bytes para que el computador pueda entender las instrucciones que les damos a través de ellos.

- GPU: Canal de comunicación entre la pantalla y el CPU. Es quién se encarga de mostrar todo en la pantalla, desde que arranca hasta reproducir videos y videojuegos.(puede hacer procesos en paralelo)

## Qué es la memoria RAM y cómo funcionan los discos duros
Un disco duro (del inglés hard drive) es una pieza de hardware que almacena datos en un disco. El usuario puede acceder a estos datos para leer y escribir archivos.

### Cómo funciona un disco duro
En generaciones anteriores, un disco duro contenía un brazo mecánico, que se utilizaba para leer y escribir los datos en un disco de metal mientras este se encuentra girando, algo similar a los antiguos discos de vinilo. Cuando el brazo lee o escribe información, necesita moverse para acceder a las diferentes partes del disco.

Actualmente, existe una serie de nuevos discos, llamados de estado sólido (Solid State Drive) que ya no utilizan ningún tipo de brazo o disco giratorio y cuyo funcionamiento se asimila más al de la memoria RAM, sin que la información se pierda al apagar el equipo. Esto permite que la velocidad de lectura y escritura sea extremadamente rápida y el tiempo de vida útil del disco se extienda por no tener piezas móviles que puedan dañarse.

- Persistente
- Secuencial
- Estructurada

### Discos duros y memoria RAM
Los discos duros tradicionales son relativamente lentos porque deben posicionarse donde está el archivo almacenado y esto puede implicar que el brazo mecánico que mueve el cabezal se tome mucho tiempo en encontrar todos los pedazos del archivo.

La memoria RAM es más rápida, ya que puede acceder a los datos almacenados de manera instantánea. La diferencia está en que los discos duros no son volátiles: guardan la información de manera persistente aunque se les quite el suministro de energía. La información de la memoria RAM, en cambio, se elimina en el momento en el que el computador se apaga.

Además, **almacenan los archivos de manera secuencial**: para almacenar un archivo, este se parte en varios pedacitos y se guarda la posición de cada uno de ellos, además de su ubicación, en el disco para poder leerlos secuencialmente.

### Sistemas de archivos de un disco
Para poder almacenar los archivos de forma adecuada, un disco duro necesita un sistema de archivos. Los sistemas de archivos son convenciones internas de los sistemas operativos para poder acceder a los archivos almacenados.

En Linux existe ext3 o ext4.
En Windows existía FAT16 o FAT32 (File Allocation Table), que fue reemplazado por NTFS (New Technology File System).
En Mac OSX el sistema de archivos se llamaba HFS (Hierarchical File System) pero ahora se llama AFS (Apple File System) en macOS Sierra.
Cuando abrimos un archivo, la CPU (Unidad Central de Procesamiento) se lo pide al disco duro y luego lo lleva a la memoria RAM para leerlo.

### Cómo funciona la memoria RAM
En la RAM están almacenados, de manera temporal, todos los programas y archivos que están en ejecución al momento de usar el computador. Si abrimos un archivo con el Bloc de Notas, por ejemplo, ambos deben estar cargados en la RAM. El CPU puede acceder a la memoria RAM a través de un índice compartido, es decir, un índice que indica en qué posiciones de memoria se encuentran qué partes de un archivo o proceso.

Los datos viajan a través de un conjunto de cables paralelos llamado bus de datos, que comunica la CPU con el disco duro y la RAM para permitir la transferencia de datos.

- Procesos:

    La memoria RAM, siendo tan rápida, tiene la capacidad de ejecutar varios procesos paralelamente. El SO es uno de esos procesos ejecutados por la RAM. Sin embargo la opciones que nos ofrece el SO son muchas y no siempre se utilizan todas, por lo tanto la RAM solo carga aquellas tareas que realmente necesitamos y estamos usando frecuentemente.

- Localización de procesos:
    
    A diferencia de los discos duros, la memoria RAM hace uso de un indice compartido con la CPU que es ultra veloz. Esto facilita y permite una localización de los procesos por parte de la CPU de una manera increíblemente rápida.

### CPU (Central process unit):

Dentro de este asombroso chip, no encontramos con un espacio que recibe por nombre Memoria Caché. En ella se guardan y almacenan cierto tipo de datos de uso frecuente, para que sea más fácil y rápido el acceso a ellos. Por ejemplo una parte del SO siempre estará almacenada en la Memoria Caché para que sea rápido acceder a él.

- Comunicación:

    - Ram:
        
        Para lograr la efectiva comunicación entre la CPU y la RAM existe lo que se conoce como un bus de datos o bridge (puente). Un bus de datos en algunas ocaciones es un cable delgado y ancho. En otros casos esta conexión está establecida como circuito en la placa madre (mother board).

    - Disco Duro:
        
        Para la conexión entre en disco duro y la CPU, el bus de datos recibió inicialmente el nombre ATA, que en una versión posterior se llamó SATA. Hay otro tipo de bus de datos para el disco duro mejor que SATA, que se llamó IDG.