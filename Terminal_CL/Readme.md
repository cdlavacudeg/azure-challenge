# Introducción a la terminal y línea de comandos
[Notas](https://www.notion.so/Introducci-n-a-la-Terminal-y-L-nea-de-Comandos-5ed377c3c79e4313b0796b679cb1dc73)
## ¿Qué es la terminal?

Es una interfaz gráfica que simula una línea de comandos. Cuando hablamos de una línea de comandos nos referimos a una shell.

Proporciona:
- Flexibilidad, para ver que pasa con los procesos2
- Velocidad, con practica es mucho más rapida que con una interfaz gráfica.
- No siempre se cuenta con una interfaz gráfica
- Puedes invocar demonios. Interaccion completa con el sistema operativo y si se usa mal puede ser bastante dañino

- Terminal: Ventanita que nos muestra el prompt, Este alojo a la shell.
- Línea de comandos (shell): Un programa que toma comandos y los pasa al sistema operativa para hacer algo.(Un comando es un programa que se puede ejecutar desde la terminal. Este se puede recibir desde la terminal.Este puede recibir parámetros y opciones.)

### Tipos de Shells
- Bourne Shell
- **Bash Shell**
- **Z Shell**
- C Shell
- Korn Shell
- Fish Shell
- PowerShell (Windows)

## Aprendiendo a caminar el la terminal

- Sistemas de archivos: El sistema de archivos, será el árbol por el que nos estaremos moviendo en la terminal.

Aquí se encuentran los archivos del sistema operativo, así como también los ejecutables, controladores, archivos de configuración, etcétera.

En la carpeta `home` es donde se encuentran los usuarios del sistema operativo. Dentro de la terminal identificamos esta carpeta con el símbolo llamado virgulilla `~`.

### Primeros comandos

- `ls` ->  Lista los archivos y carpetas del directorio.
- `ls -l` -> Lista los archivos y carpetas con toda la información de cada uno.
- `ls -lh` -> Lista los archivos y carpetas con la información legible para humanos.
- `cd` -> Mueve la terminal al directorio `home` del usuario.
- `cd {folder`} -> Mueve la terminal al directorio indicado.
- `clear` -> Limpia la pantalla de la terminal (shortcut: `cmd + L`).
- `pwd` -> (print working directory) Imprime la ruta actual en la que nos encontramos en la terminal.
- `file {name_file}` -> Describe el tipo de archivo que le pasamos como parámetro.

### Rutas relativas

Tenemos dos parámetros que nos ayudan a trabajar con las rutas en la terminar, estos parámetros son de rutas relativas. Los conocemos como `.` y `..`.

El primer de ellos nos ubica en el directorio actual y el segundo nos regresa un directorio.

## Manipuland archivos y directorios

### Listando elementos

- `ls -la` Lista todos los elementos del directorio, incluidos los ocultos.
- `ls -lS` Lista todos los elementos iniciando por los más pesados.
- `ls -lr` Lista todos los elementos de forma inversa.
- `ls {nombre_capeta}` Lista los elementos de una subcarpeta
- `tree` Despliega todos nuestros directorios como un árbol.
- `tree -L (#}` Despliega los elementos que se encuentren en el nivel indicado.

## Manipulación de elementos

- `mkdir (folder}` Crea un nuevo directorio con el nombre indicado.
- `touch {file}` Crea un nuevo archivo con el nombre indicado.
- `cp {original} {copia}` Copia un archivo.
- `mv (file} {path}` Mueve el archivo a la ubicación deseada.
- `mv {name} {new_name}` Renombra el archivo o directorio.
- `rm {file}` Elimina el archivo indicado.
- `rm -i {file}` Pide confirmación antes de eliminar el archivo.
- `rm -r {folder}` Elimina el directorio indicado.

## Explorando el contenido de nuestros archivos

La terminal nos permite explorar archivos desde ella misma, así evitamos abrirlos por completo. Los comandos para explorar archivos están listados a continuación:

- `head {file}`-> Muestra las primeras 10 líneas de un archivo de texto.
- `head {file} -n (#}`-> Muestra las primeras líneas de código indicadas.
- `tail {file}`-> Muestra las últimas 10 líneas de un archivo de texto.
- `tail {file} -n (#}`-> Muestra las últimas de líneas de código indicadas.
- `less (file}` ->Muestra todo el archivo de texto seleccionado. es muy interactivo, nos permite hacer scroll, y nos permite hacer búsquedas haciendo `/<palabra a buscar>`. Para salir presionamos q.
- `cat {file}` -> Muestra todo el archivo de texto
- `open` ->Abre un archivo desde la terminal (MacOs).
- `xdg-open`-> Abre un archivo desde la terminal (Linux).
- `nautilus` ->Abrir el sistema de archivos (Linux)
- `wslview ejemplo.tipoArchivo` ( abrir un archivo )
- `wslview nombreDirectorio` ( abrir un directorio )
- `explorer.exe "."` Abre el explorador de archivos en la carpeta actual (windows)

```
Para detener un proceso que se esté ejecutando en 
la terminal basta con utilizar la combinación de 
teclas ctrl + c para interrumpirlo.
```

## ¿Qué es un comando?

Un comando puede ser cuatro cosas:

1. Un programa ejecutable.
2. Un comando de utilidad de la shell.
3. Una función de shell.
4. Un alias.

Para crear alias en la terminal podemos hacer uso de la palabra reservada alias , este nos crea un alias temporal para la sesión actual en la que estamos trabajando; hacerlo persistente se verá en una siguiente sección.

- `alias 1="ls -1h"`

### Comandos adicionales


- `help {comando}` || `{comando} --help` Muestra información sobre cómo usar un comando (BASH).
- `man (comando}` Muestra el manual del comando indicado.
- `info {comando}` Muestra el manual del comando indicado.
- `whatis {comando}` Muestra una descripción corta del comando indicado.
- `type {comando}` analizar la naturaleza de otros comandos.

## Wildcards 

Las `wildcards` son una serie de patrones o caracteres especiales que nos permiten realizar búsquedas avanzadas.

Ejemplos de estos patrones:

1. Filtrar archivos que terminen en una extensión en particular.
    
    ```bash
    ls *.txt
    ```
    
2. Filtrar archivos que contengan una palabra en específico.
    
    ```bash
    ls datos*
    ```
    
3. Filtrar archivos que contengan solo un carácter después de la palabra especificada.
    
    ```bash
    ls datos?
    ```
    
4. Filtrar archivos que tengan tres caracteres después de la palabra especificada.
    
    ```bash
    ls datos???
    ```
    
5. Filtrar todos los archivos y directorios que inicien con una mayúscula.
    
    ```bash
    ls [[:upper:]]* # Busca en todo el arbol
    ls -d [[:upper:]]* # Busca solo en el directorio actual
    ```
    
6. Filtrar todos los archivos y directorios que inicien con una minúscula.
    
    ```bash
    ls [[:lower:]]* # Busca en todo el arbol
    ls -d [[:lower:]]* # Busca solo en el directorio actual
    ```
    
7. Mostrar todos los archivos que comiencen con una `a` o `d`.
    
    ```bash
    ls [ad]*
    ```
 # Funciodalidades intermedias de la terminal

 ## Redirecciones: cómo funciona la shell
 <img src="https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F3d07f3a5-e859-4b33-b817-12dc1920de37%2F2._Slides.png?table=block&id=06451461-271c-4311-81a2-7cda6597d025&spaceId=b1adf226-57fc-4521-b3d7-436db36534bb&width=1580&userId=&cache=v2">

En el diagrama tenemos una entrada que se le conoce como standard input (`stdin`) que proviene de nuestro teclado; pero que también lo podemos redirigir desde archivos de texto.

    El 0 en el stdin se le conoce como un *file* descriptor.

Este `stdin` entra dentro del `comando` donde tenemos dos opciones:

1. Que nos produzca un standard output ( `stdout` ). Por ejemplo cuando usamos un `ls` este `stdout` sería que nos muestre todos los directorios.
2. Que nos muestre un standard error ( `stderr` ). Por ejemplo que intentemos listar un directorio que no existe, entonces el comando nos dirá que hay un error.

*Ambas* salidas se manejan de manera distinta. `stdout` se maneja con un *file* descriptor con el código 1 y el `stderr `con el código 2.

### Comandos adicionales:

- `ls {folder} > {name}.txt` El listado de los archivos del directorio seleccionado se listaran en un nuevo archivo de extensión .txt
- `ls {folder} >> {name}.txt` Si el archivo ya existe el nuevo listado se va a concatenar al contenido que ya tiene el archivo.
- `ls {folder} 2> {name}.txt` Redirige un stderr a una salida por archivo.
- `ls {folder} > {name}.txt 2>&1` Redirige ambas salidas, tanto el stdout y stderr.
- `comando < {archivo}` Redirige el input de un comando hacia un archivo.

## Redirecciones: pipe operator

El pipe operator nos permite que el `stdout` se convierta en el `stdin` de otro comando.Ejemplo:

    `ls -lh | less`

### Comandos
- `echo {texto}` Imprime en consola la indicado.
- `cat {file 1} {file 2}` Muestra el contenido de un archivo, también puede concatenar.
- `comando | sort` Ordena la salida del comando
- `cowsay {text}` Imprime una vaca diciendo el texto pasado.
- `{comando}|lolcat` Colorea la salida del comando.
- `tee` Analogo de `comando > {archivo}.txt`

## Encadenando comandos: Operadores de control
En la terminal podemos encadenar comandos para que se ejecuten de forma síncrona; se realiza separando cada comando por una `;`.

```bash
ls; mkdir NewFolder; cal
```

También los podemos ejecutar de manera asíncrona, esto significa que por cada comando que se ejecute se abrirá una `shell` o línea de comandos en segundo plano. Esto permite ejecutar comandos de forma paralela.

```bash
ls & date & cal
```

Podemos correr comandos de forma condicional, esto quiere decir que por ejemplo, si se cumple un comando queremos que se ejecute un segundo.

```bash
# AND
mkdir test && cd test
# OR
cd test || touch file.txt
```

## Cómo se manejan los permisos

En la terminal podemas usar diferentes tipos de símbolos, los cuales podemas clasificar por:

- Tipos de archivos

    | Atributo | Tipo de archivo |
    |----------|-----------------|
    | -        | Un archivo normal.|
    | d        | Un directorio.|
    | l        | Un link simbólico.|
    | b        | Un archivo de bloque especial. Son archivos que manejan la información de las bloques de datos como una USB. |

- Tipo de modo

    |Dueño|Grupo|World|
    |-----|-----|-----|
    |rwx|r-x|r-x|

    r-read
    w-write
    x-execute
    
    - Representacion octal y binario:

        |Octal| Binario| Permisos|
        |----|----|---|
        |0|000| ---|
        |1|001| --x|
        |2|010| -w-|
        |3|011| -wx|
        |4|100| r--|
        |5|101| r-x|
        |6|110| rw-|
        |7|111| rwx|

    - Modo simbólico:

        |Simbolo| Significado|
        |---|---|
        |u| Solo para el usuario|
        |g| Solo para el grupo|
        |o| Solo para otros (es el world)|
        |a| Aplica para todos|

## Modificando permisos en la terminal

# Modificando permisos en la terminal

El usuario más privilegiado es el `root` ya que tiene permisos para hacer básicamente de todo.8


    si listamos con ls -l, -rw-r--r--, significa, rw -> usuario, r->grupos,r->world


Para modificar los permisos en la terminal podemos hacer uso del comando `chmod` con los diferentes modos vistos previamente.

- Modificando permisos con el modo octal
    
    ```bash
    chmod 755 {file_name}
    ```
    
- Quitando permisos de lectura con el modo simbólico
    
    ```bash
    chmod u-r {file_name}
    ```
    
- Dando permisos de lectura con el modo simbólico
    
    ```bash
    chmod u+r {file_name}
    chmod u-x,go=w {file_name}
    ```
    

### Comandos
- `whoami` Devuelve el nombre del usuario actual.
- `id` Devuelve los grupos a los que pertenece el usuario.
- `su {usuario}` Cambia el usuario al usuario especificado (puede ser root)
- `sudo` (comando} Da permisos de root para el comando indicado.
- `passwd` Cambia la contraseña del usuario actual.

## Variables de Entorno
Estas variables hacen referencia a archivos, directorias y funciones comunes del sistema cuya ruta concreta puede variar, pero que otros programas necesitan poder conocer.

## Comandos

- `printenv` Lista todas las variables de entorno.
- `echo $variable` Imprime el contenido de la variable..

En `bash` el archivo que contieno toda la configuración, variables y alias lo encontramos como `.bashrc`.

Para añadir rutas a nuestra variable de enterno mejeor conocida cama `PATH` hacemas uso de la sintaxis presentada a continuación.

    PATH=$PATH:/home/user/bin

Lo que hace dicha sintaxis es que concatena la información previamente guardada en esta variable más la información nueva que nosotros estamos agregando

## Comandos de búsqueda

Los comandos de búsqueda nos ayudan a encontrar archivos o directorios dependiendo de su extensión, nombre, donde se encuentran ubicados, etcétera.


    💡 Esto es muy usado, por ejemplo al querer buscar archivos
     `.log`, estos archivos recopilan información de un archivo
      en ejecución.


### Comandos

- `which {bin}` Muestra la ruta donde se encuentra el binario indicado.
- `find {path} -name {name}` Busca en una ruta el archivo indicando.
- `find {path} -type d -name {name}` Busca en una ruta un directorio que coincida con el tipo y el nombre indicado.
- `find {path} -type f -name {name}` Busca en una ruta un archivo que coincida con el tipo y el nombre indicado.                
- `find {path} -size {size}` Busca en una ruta el archivo que pese el tamaño indicado.

## grep

`Grep` es uno de los comandos más útiles que hay en la terminal, además de ser muy potente dentro del ambiente de desarrollo de Linux.

### Pero... ¿Qué hace?

Lo que nos permite hacer es encontrar coincidencias de una búsqueda dentro de un archivo de texto o en general dentro de cualquier texto, por ejemplo un *standard output*.

Ejemplo de uso:

```bash
grep {expReg} {file}
```

Buscará todas las coincidencias de lo indicado en el parámetro primer parámetro que de hecho es una expresión regular, dentro del archivo seleccionado. 

Por defecto las búsquedas con grep son *case sensitive* si queremos que no sean así añadimos la opción de `-i`.

```bash
grep -i {expReg} {file}
```

Si queremos contar el número de ocurrencias que hay, añadimos la opción de `-c`.

```bash
grep -c {expReg} {file}
```

Encontrar todas las no coincidencias, para esto añadimos la opción de `-v`.

```bash
grep -v {expReg} {file}
```

### Bonus

Contar la cantidad de palabras de un archivo.

```bash
wc {file}
# 0000   00000    000000 {file name}
# líneas palabras bits   nombre del archivo
```

Retorna solo el número de líneas

```bash
wc -l {file}
```

Retorna solo el número de palabras.

```bash
wc -w {file}
```

Retorna solo el número de bits.

```bash
wc -c {file}
```