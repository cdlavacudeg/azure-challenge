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

### Monitoreo de recursos del sistema

El comando `top` nos permite interactuar con una interfaz gráfica que nos muestra información específica del sistema operativo: cantidad de usuarios, tareas corriendo o “durmiendo”, identificadores de los procesos, entre otras.

Para ver la información de la CPU podemos usar el comando `cat /proc/cpuinfo | grep "processor"`. Recuerda que Linux hace diferencia entra mayúsculas y minúsculas, pero puedes usar el comando `grep -i` para filtrar sin estas diferencias.

Para ver la información de la memoria podemos usar el comando `free` o, para que la información sea más fácil de leer, `free -h`. Y para ver el uso del disco duro está el comando `du` o `du -hsc`.

## Insatalción de programas y administroción en Linux

### Análisis de parametros de red

Una IP es un identificador único para los equipos que están conectados a una red.

Las IPs Privadas se utilizan para identificar los dispositivos dentro de una red local. Por ejemplo: los dispositivos conectados en tu casa u oficina.

Las IPs Públicas son la que se asignan a cualquier dispositivo conectado a Internet. Por ejemplo: los servidores que alojan tus sitios web, el router que te da acceso a internet, entre otros.

Si tu dispositivo tiene una IP pública significa que puede conectarse a otro que también tenga una. Por esto mismo, no puede haber dos dispositivos con la misma IP pública.

Para encontrar la dirección IP de nuestros dispositivos podemos usar los comandos `ifconfig` en Linux y Mac o `ipconfig` en Windows. También podemos usar el comando `ip a`.

Para ver el nombre/identificador de nuestro equipo en todas las redes podemos usar el comando `hostname`. También podemos ver qué dispositivo nos permite acceso a Internet con el comando `route -n`.

Para identificar las IPs de diferentes dominios podemos usar el comando `nslookup nombredominio.ext`. También podemos usar el comando `curl` para realizar consultas a algún servidor.

## Administración de paquetes acorde ala distribución 

Cada distribución de Linux maneja su software de maneras diferentes.

- Red Hat / CentOS / Fedora:

    Su gestor de paquetes es `.rpm` (Red hat Package Manager). La base de datos de este gestor está localizada en `/var/lib/rpm`.

    El comando `rpm -qa` nos permite listar todos los rpms instalados en la máquina. Con `rpm -i nombre-del-paquete.rpm` instalamos los paquetes y con `rpm -e nombre-del-paquete.rpm` los removemos el sistema.

    Los paquetes se pueden instalar desde un repositorio sin tener que conocer la ruta del archivo o las dependencias con el comando `yum install nombre-del-paquete`.

    También podemos buscar paquetes más específicos con el comando y`um search posible-nombre-del-paquete` .

- Debian / Ubuntu:

    Su administración de paquetes es `.deb`. Podemos realizar las instalaciones con `dpkg -i nombre-del-paquete.deb` o `repositorios apt`.

    Su base de datos está localizada en `/var/lib/dpkg`. Con el comando `dpkg -l` listamos todos los debs instalados en la máquina. Instalamos los paquetes con `dpkg -i nombre-del-paquete` y los removemos del sistema con `dpkg -r nombre-del-paquete`.

    Si ya tenemos software configurado podemos usar el comando `dpkg-reconfigure nombre-paquete` para volver a ejecutar el asistente de configuración (si está disponible).

    También podemos realizar las instalaciones con el comando `apt install nombre-paquete` y búsquedas de paquetes con `apt search posible-nombre-paquete`.

## Nagios: Desempaquetado, descompresión, compilación e instalación de paquetes 



No todo el software que necesitamos se encuentra en los repositorios. Debido a esto, algunas veces debemos descargar el software, realizar un proceso de descompresión y desempaquetado para finalmente instalar la herramienta.

Instalación de algunas herramientas para manejar una base de datos `MySQL`.

```
sudo apt install build-essential libgd-dev openssl libssl-dev unzip apache2 php gcc libdbi-perl libdbd-mysql-perl
```

Instalación de [Nagios](https://www.nagios.org/):

```
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.4.tar.gz -O nagioscore.tar.gz
```

Descomprimir y desempaquetar archivos con tar:

`tar xvzf nagioscore.tar.gz`

Este comando creará una carpeta nagios-4.4.4. El nombre de la carpeta puede variar dependiendo de la versión que descargaste. 

Entrando a esta carpeta podemos ejecutar diferentes archivos y comandos para configurar el software y realizar la instalación.

- 1:
`sudo ./configure --with-https-conf=/etc/apache2/sites-enabled`
- 2:
`sudo make all`
- 3:
`sudo make install`
Si les da error en el paso de ejecutar `sudo make install`, primero tienen que hacer lo siguiente:
`sudo make install-groups-users
sudo usermod -a -G nagios www-data`
- 4:
`sudo make install-init`
- 5:
`sudo make install-commandmode`
- 6:
`sudo make install-config`
- 7:
`sudo make install-webconf`

verificar `curl localhost`

Por último, para administrar el servicio de nagios podemos usar el comando `sudo systemctl (status, start, restart, reload, stop, enable, disable, list-dependencies) nagios`.

```
If the main program and CGIs compiled without any errors, you
can continue with testing or installing Nagios as follows (type
'make' without any arguments for a list of all possible options):

  make test
     - This runs the test suite

  make install
     - This installs the main program, CGIs, and HTML files

  make install-init
     - This installs the init script in /lib/systemd/system

  make install-daemoninit
     - This will initialize the init script
       in /lib/systemd/system

  make install-groups-users
     - This adds the users and groups if they do not exist

  make install-commandmode
     - This installs and configures permissions on the
       directory for holding the external command file

  make install-config
     - This installs *SAMPLE* config files in /usr/local/nagios/etc
       You'll have to modify these sample files before you can
       use Nagios.  Read the HTML documentation for more info
       on doing this.  Pay particular attention to the docs on
       object configuration files, as they determine what/how
       things get monitored!

  make install-webconf
     - This installs the Apache config file for the Nagios
       web interface

  make install-exfoliation
     - This installs the Exfoliation theme for the Nagios
       web interface

  make install-classicui
     - This installs the classic theme for the Nagios
       web interface
```
## Comandos

- `clear`, `Ctrl + l` -> Limpiar la consola
- `tail -f {archivo}` -> Seguimiento de cambios del archivo
- `sudo chvt {#}` -> Creación de una terminal nueva
- `history` -> Leer el historial de comandos, `!{numero de history}` ejecuta el comando en esa linea
- `cat /usr/sbin/{nombre_comando}` Muestra el contenido de un comando

### Procesos
- `ps -ft tty` -> Procesos filtrando únicamente las conexiones de los usuarios
- `ps aux` -> Procesos activos del sisteam
- `grep regex` -> filtrar con respecto a la expresion regular
- `Ctrl+z` -> Enviar los procesos a un background
- `fg` -> Traer devuelta el proceso del background (foreground)
- `chmod` -> Cambiar permisos del archivo
- `./script.sh` -> ejecuta el archivo y muestra el resultado.
- `./script.sh &` -> ejecuta el archivo, muestra un proceso especifico y muestra el resultado.
- `nohup ./script.sh &` -> genera una salida con el nombre de **nohup.out** y en el encontramos toda la información de lo que realiza el proceso. Esto es muy útil cuando realizamos despliegues en servidores porque sabemos que esta realizando el proceso.

### Recursos
- `cat /proc/cpuinfo | grep "processor"`-> Muestra información sobre el CPU
- `sudo ps auxf | sort -nr -k 3 | head -5`: Muestra los 5 procesos que más uso hacen del CPU

- `sudo ps auxf | sort -nr -k 4 | head -5`: Muestra los 5 procesos que más uso hacen de la memoria RAM

- `top` ||`htop` Muestra load avg, uso de memoria, cantidad de usuarios, uso del CPU, Procesos, Etc. `htop` más intuitivo.

- `free` Información de la memoria del sistema, `free -h`, información más legible.
- `du` || `du -hsc {directorio}` Información del disco, espacio ocupado.S

### Parametros de red
- `ifconfig` Interface Configuration Listamientos de tarjetas y su direccionamiento
- `ip a` Ip address show, tambien muestra la información de la red. flag -4 (ipv4) -6 (ipv6)
- `host name` Identificación del equipo en todas las redes
- `route -n` Muestra la puerta de enlace predeterminada al equipo
- `nslookup {dominio}` Revisar configuración del dominio
- `curl {dominio(ej localhost)}` Simulaciones GET,POST, Request parecidas a postman
- `wget {dominio}` Descarga de paquetes

### Manejo de paquetes ubuntu server
- `sudo apt update` paquetes que necesitan actualización
- `sudo apt upgrade` actualiza los paquetes
- `sudo apt dist-upgrade` upgrade de la distro
- `sudo apt search {paquete}` busqueda de paquetes
- `dpkg -l` Listar todos los paquetes instalados
- `dpkg-reconfigure {paquete}` Reconfiguración de un paquete
- `sudo snap search {paquete}`
- `sudo snap refresh --list`
- `sudo snap info {paquete}`

### Manejo de paquetes Centos
- `rpm -qa` Lista de todos los paquetes instalados
- `rpm -qi {paquete}` información del paquete
- `sudo yum update`
- `rpm -e curl` Instalación paquete

### Nagios
- `sudo systemctl (status, start, restart, reload, stop, enable, disable, list-dependencies) nagios` Interacción con servicio nagios. 

### User manager

- `id` Identificación del usuario, usuarios empiezan en 1000 ( en centos empieza en 500), root es 0
- `whoami` Identificación ddel usuario
- `cat /etc/passwd` Archivo de todos los usuarios, no modificar para eso se emplean otros doumentes
- `cat /etc/shadow` Password solo accede root o grupo shadow
- `passwd {usuario}` Cambio de contraseñas del usuario

#### Creación, actualización y eliminación de usuarios
- `sudo useradd {nombre del usuario}` crear nuevo usuario
- `sudo adduser {usuario}` Crea un usuario y solicita un password, además de otros datos, crea un home.
- `sudo userdel {usuario}` Elimina a el usuario
- `sudo usermod {usuario}` Modifica a un usuario

#### Membresía de los grupos
- `su - {nombre_usuario}` cambiar a otro usuario
- `sudo su - {usuario}` Cambiar de usuario sin saber contraseña.
- `groups {usuario}` Lista a que grupo pertenece
- `sudo gpasswd -a {usuario} {grupo}` Añade e el usuario a el grupo especificado
- ` sudo gpasswd -d {usuario} {grupo}` Elimina del grupo al usuario
- `usermod -aG {grupo} {usuario}` Mover al grupo
- `sudo -l` Muestra los permisos que tiene el usuario actual

#### PAM para el control de acceso de usuarios (Centos)
ubuntu sudo, readhat wheel.
- `ls /etc/pam.d` Información de las configuraciones de PAM.
- `ls /lib64/security` Acessos de pam
- `ls /etc/security`
- `pwscore` Verificación de contraseña, score de la calidad de una contraseña
- `ulimit -u {numero_procesos}` Restringir el numero de procesos
- `ulimit -a`Verificar caracteristicas del usuario
- `vi /etc/security/time.conf` Cambior para que solo se puedan logear en ciertos tipos de horarios.




## Links Referencias

[File System Tree Overview](https://help.ubuntu.com/community/LinuxFilesystemTreeOverview)

[Instalación Nagios Ubuntu 20.04 LTS](https://comoinstalar.me/como-instalar-nagios-core-en-ubuntu-20-04-lts/)