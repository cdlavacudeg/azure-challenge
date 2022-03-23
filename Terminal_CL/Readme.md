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