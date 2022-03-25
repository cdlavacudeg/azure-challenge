# Administración de Servidores Linux

Instalación y monitoreo de servicios, comandos, scripts, gestión de usuarios y muchas otras herramientas para que nuestros servidores funcionen correctamente. O, en caso de encontrar algún problema, tener las herramientas necesarias para solucionarlo.

## Distribuciones más utilizadas de Linux

Instalar soporte extendido (LTS-> Long Term Support).
 [Estadisticas de uso](https://w3techs.com/technologies/details/os-linux)
 
 Mayor cantidad en Ubuntu server 18.04 o CentOS Server versión 7

## Terminales en linux

Las distribuciones de Linux para servidores no incluyen interfaz gráfica, ya que consumen muchos recursos. Esto significa que siempre vamos a trabajar desde la terminal.

Tendremos disponibles 6 terminales virtuales a las que podemos entrar o salir con las teclas `Ctrl + Alt + Fx(f1-f6)`. También podemos usar el comando `chvt`. La séptima terminal es la interfaz gráfica, así que en este caso no disponemos de ella.

Cada usuario activo en nuestro sistema operativo crea una nueva conexión. Podemos ver todas estas conexiones con los comandos `who` y `w `(este último nos da un poco más de información).

Para ver todos los procesos que corren en el sistema podemos usar el comando ps. Para filtrar los procesos y ver únicamente las conexiones de los usuarios usamos ps -ft tty.

Este comando nos muestra el identificador de cada proceso. Para terminarlo podemos usar el comando kill -9 PID.
### Identificando terminales en linux
    - Consolas físicas tendrán una numeración de tty1 - tty6

### Pseudoterminales
    - Terminales Lógicas

## Manejo y monitorea de procesos y recursos del sistema

Una de las funciones importantes de los administradores de sistemas es verificar que todos los procesos que se están ejecutando sean válidos y no sean procesos que esten haciendo cosas maliciosas.

Para ver todos los procesos que corren en el sistema podemos usar el comando `ps`. Recuerda que puedes ver la documentación de este comando con el comando `man ps`.

El comando `grep` nos ayuda a filtrar el resultado de un comando o archivo dependiendo de las palabras de cada línea. Para esto también vamos a usar el `pipe (|)`, un símbolo que nos ayuda a enviar el resultado de un comando a un segundo comando.

Por ejemplo, el comando `ps aux | grep platzi` imprime los procesos activos del sistema y, con ayuda del pipe, envía la lista al comando grep para filtrar el resultado, mostrando únicamente las líneas con la palabra platzi.

### Monitore de recursos del sistema

El comando `top` nos permite interactuar con una interfaz gráfica que nos muestra información específica del sistema operativo: cantidad de usuarios, tareas corriendo o “durmiendo”, identificadores de los procesos, entre otras.

Para ver la información de la CPU podemos usar el comando `cat /proc/cpuinfo | grep "processor"`. Recuerda que Linux hace diferencia entra mayúsculas y minúsculas, pero puedes usar el comando `grep -i` para filtrar sin estas diferencias.

Para ver la información de la memoria podemos usar el comando `free` o, para que la información sea más fácil de leer, `free -h`. Y para ver el uso del disco duro está el comando `du` o `du -hsc`.
## Comandos

- `clear`, `Ctrl + l` -> Limpiar la consola
- `tail -f {archivo}` -> Seguimiento de cambios del archivo
- `sudo chvt {#}` -> Creación de una terminal nueva

Procesos
- `ps -ft tty` -> Procesos filtrando únicamente las conexiones de los usuarios
- `ps aux` -> Procesos activos del sisteam
- `grep regex` -> filtrar con respecto a la expresion regular
- `Ctrl+z` -> Enviar los procesos a un background
- `fg` -> Traer devuelta el proceso del background (foreground)
- `chmod` -> Cambiar permisos del archivo
- `./script.sh` -> ejecuta el archivo y muestra el resultado.
- `./script.sh &` -> ejecuta el archivo, muestra un proceso especifico y muestra el resultado.
- `nohup ./script.sh &` -> genera una salida con el nombre de **nohup.out** y en el encontramos toda la información de lo que realiza el proceso. Esto es muy útil cuando realizamos despliegues en servidores porque sabemos que esta realizando el proceso.

Recursos
- `cat /proc/cpuinfo | grep "processor"`-> Muestra información sobre el CPU
- `sudo ps auxf | sort -nr -k 3 | head -5`: Muestra los 5 procesos que más uso hacen del CPU

- `sudo ps auxf | sort -nr -k 4 | head -5`: Muestra los 5 procesos que más uso hacen de la memoria RAM

- `top` ||`htop` Muestra load avg, uso de memoria, cantidad de usuarios, uso del CPU, Procesos, Etc. `htop` más intuitivo.

- `free` Información de la memoria del sistema, `free -h`, información más legible.
- `du` || `du -hsc {directorio}` Información del disco, espacio ocupado.S
## Links Referencias

[File System Tree Overview](https://help.ubuntu.com/community/LinuxFilesystemTreeOverview)