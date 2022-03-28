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

### Autenticación de clientes y servidores sobre SSH

- `sudo vi /etc/ssh/sshd_config` Abrir en el editor el archivo para configuración
-`ssh-keygen` generar las llaves, y elegir una ubicación para guardar la llave privada, La llave pública tiene extension `.pub`
- `ssh-copy-id -i directorio_de_llave/id_rsa.pub nombre_usuario@direccion_ip_del_servidor` copiar llave pública al servidor, dirección del servido se extrae con `ifconfig`
- `ssh nombre_usuario@direccion_ip_del_servidor` Conectarnos exitosamente de forma remota
- `ssh -v` verbose para ver mejor la información ( se pueden añadir hasta 4 v)

### Arranque, detención y recarga de servicios

- `sudo systemctl status servicio`: Estado de un servicio
- `sudo systemctl enable servicio`: Habilita un servicio
- `sudo systemctl disable servicio`: Deshabilita un servicio
- `sudo systemctl restart servicio`: Reinicia un servicio
- `sudo systemctl list-units -t service --all`: Lista los servicios del sistema
- `sudo journalctl -fu servicio`: Muestra el log de un servicio

- `sudo journalctl --disk -usage`: Muestra cuanto pesan los logs en el sistema operativo
- `sudo journalctl --list`-boots: Muestra los booteos de la computadora
- `sudo journalctl -p critic|notice|info|warning|error`: Muestra mensajes de determinada categoría de nuestros logs
- `sudo journalctl -o json`: Muestra los logs en formato json


###  [Apache y ngnix](https://platzi.com/clases/1667-linux/23437-nginx-y-apache-en-ubuntu-server/)
- `sudo apt install apache2`
- `sudo apt install nginb nginx-extras`
- `sudo nano /etc/apache2/ports.conf`-> cambiar el puerto a 8080
- `sudo nano /etc/apache2/sites-available/000-default.conf` -> cambiar el virtual host <VirtualHost: *:8080>.

### Instalación y configuración de NGINX
Se puede emplear como proxy o almacenamiento de caché
- `sudo apt search nginx`
- `sudo apt search "nginx$"`
- `sudo apt update && sudo apt install nginx`
- `sudo systemctl status apache2`
- `sudo systemctl status nginx`
- `netstat -tulpn`
- `sudo systemctl stop apache2`
- `sudo systemctl status apache2`
- `netstat -tulpn`
- `cd /etc/nginx`
- `ls`
- `vi ngnix.conf`
- `cd sites-available`
- `ls`
- `vi default`
- `cd /var/www/html`
- `curl localhost`
- `curl -I localhost`
- `cd /etx/nginx/sites-enabled/`
- `ll`

### [Nginx aplify](https://www.nginx.com/products/nginx-amplify/)

NGINX Amplify es una herramienta que permite monitorear aplicaciones y servicios de NGNIX. Nos ayuda a detectar problemas en nuestros proyectos, trackear las peticiones, conexiones, tiempos de respuesta, tráfico, uso de CPU, entre otras.

- Instalar Python 2.7
   `sudo apt install python2.7`
- Movernos a la carpeta de Nginx `cd /etc/nginx`
- Modificar el archivo conf.d de la siguiente manera
```
sudo cat > conf.d/stub_status.conf
server{
	listen 127.0.0.1:80;
	server_name 127.0.0.1;
	location /nginx_status {
		stub_status on;
		allow 127.0.0.1;
		deny all;
	}
}
```
- Matar el proceso de Nginx `sudo kill -HUP "cat /var/run/nginx.pid"`
- Reiniciar y habilitar Nginx `sudo systemctl restart nginx && systemctl enable nginx`

- Logearnos en el sitio web de Nginx Amplify y seguir las [instrucciones de instalación](https://amplify.nginx.com) 
- Iniciar el servicio de Nginx Amplify `service amplify-agent start`
- Reiniciar Nginx `sudo systemctl restart nginx`

### Monitoreo de MySQL con Nagios:

- `sudo apt install mysql-server` Instalar MySQL Server.
- `sudo vim /etc/mysql/debian.cnf`- Archivos de configuración, Obtener el password y usuario de MySQL (debian-sys-maint,TnEUgAacbDRovvSp)
- `mysql -u debian-sys-maint -p` Iniciar sesión en MySQL, se ingresa la password

- `sudo mysql_secure_installation`  Asegurar el server de la base de datos, mayor seguridad

- `systemctl status apache2` Verificar el estado de apache

- `sudo a2enmod rewrite cgi` Activar módulos rewrite y cgi

- `sudo systemctl restart apache2`

- `sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin` Crear un usuario para ingresar a Nagios
 

- `direccion_ip_del_servidor:8080/nagios`Entrar a Nagios en nuestro navegador web, escribiendo la dirección.
Es muy importante notar que estamos ingresando en el puerto 8080, ya que ahí es donde está funcionando Apache

- `sudo apt install -y libmcrypt-dev make libssl-dev bc gawk dc build-essential snmp libnet-snmp-perl gettext`Instalar las siguientes dependencias.

- `wget https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz -0 plugins.tar.gz -O plugins.tar.gz` Descargar archivo de plugins

- `tar xzvf plugins.tar.gz` 
Desempaquetar y descomprimir el archivo de plugins

Ya en la carpeta de plugins que se creo con el paso anterior, configurar los mismos
`sudo ./config`
Verificar que no existan errores ni warnings

```
sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
```
- `sudo systemctl restart nagios`

- `wget https://labs.consol.de/assets/downloads/nagios/check_mysql_health-2.2.2.tar.gz -O mysqlplugin.tar.gz` descargar plugin de MySQL

- `tar xzvf mysqlplugin.tar.gz` 

### Configiración de Nagios

1. En la consola de MySQL, crear un usuario
   ```sql
   GRANT SELECT ON *.* TO 
   '{user}'@'localhost' 
   IDENTIFIED BY '{password}';
   FLUSH PRIVILEGES; 
   ```
2. configurar nagios `sudo vi /usr/local/nagios/etc/nagios.cfg`, añadir la linea:
`cfg_file=/usr/local/nagios/etc/objects/mysqlmonitoring.cfg`

3. Crear comandos para hacer uso de nagios
`sudo vim /usr/local/nagios/etc/objects/commands.cfg` y agregar las siguientes líneas: 
```
define command {
	command_name check_mysql_health
	command_line $USER1$/check_mysql_health -H $ARG4$ --username $ARG1$ --password $ARG2$ --port $ARG5$  --mode $ARG3$
}
```
4. Crear e archivo que nombramos en la configuración en el archivo `nagios.cfg`

```
sudo vim /usr/local/nagios/etc/objects/mysqlmonitoring.cfg

#Ya en el archivo, agregar las siguientes líneas

define service {
	use local-service
	host_name localhost
	service_description MySQL connection-time
	check_command check_mysql_health!{user}!{password}!connection-time!127.0.0.1!3306!
}
```

### Los logs, nuestros mejores amigos
- `find /etc -type f` lesdo solo los archivos f (files), d (directeries), l (links)
- `find /var/log/ -name *.log -type f` los archivos .log
- `find /var/log/ -iname *.log -type f` los archivos .log ignore case
- `find /var/log/ ! -name *.log -type f` ! que no sean .log
- `sudo find /etc/ -mtime 10 2> /dev/null` busqueda de modificaciones en los ultimos 10min y cualquier error no lo plotee.
- `grep {palabra} {archivo}` Busca la palabra sobre el archivo especifico
- `awk '{print $1}' {dir_path}` Apuda a filtrar patrones en un archivo, organizarlos y darles formato
- `awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr` Muestra las ip's que se conectaron a nuestro servidor
- `awk '{print $9}' /var/log/nginx/access.log | sort | uniq -c | sort -nr` Muestra los errores que surgieron en nuestro servidor
- [Otros servicios de logs](https://platzi.com/clases/1667-linux/23278-otros-servicios-de-logs/)

## Las Bases de bash
¿Qué es Bash? Es una shell de UNIX y el intérprete de comandos por defecto en la mayoría de distribuciónes GNU/Linux. Se pueden crear scripts, los cuales por convención terminan con la extensión .sh

- `#!/bin/bash` Definición de un interprete para que lo que sigue se ejecute con Bash
- `VARIABLE="Hola mundo"` Definición de una variable
- `echo $VARIABLE` Imprimir en pantalla
- `COPY_PWD=$(pwd)` Guarda el resultado de pwd en una variable
- `# comentario` Comentarios en bash

### Las variables y su entorno de ejecución
Las variables de entorno son un conjunto de variables globales en nuestros sistemas que nos permiten acceder de forma más fácil a una ruta o un conjunto de comandos difíciles de recordar. Podemos usarlas en la terminal y en los archivos de bash.

El comando `env` nos permite ver todas las variables de entorno de nuestro sistema.

## Asegurando tu servidor

### Entendiendo la gestión de vulnerabilidades
 - Comodidad vs seguridad
 - Aseguramiento es un proceso constante

#### Malas practicas
- No desactivar el usuario root
- Realizar un login con usuario y password (sin ssh)
- No validar la versión de software usada
- Utilizar comandos r* o telnet
- No identificar los servicios y puertos abiertos en el S.O
- No gestionar correctamente los permisos de los usuarios

se recomienda verificar las actualizaciones de seguridad
```
# Centos
yum check-update --security
yum update security
# Ubuntu
apt update
apt upgrade
```
### Superficie de ataque, Principio del menor privilegio
La Superficie de Ataque es el conjunto de vulnerabilidades o datos conocidos que pueden ser explotados por un atacante informático. Cada servicio de nuestras aplicaciones es un nuevo punto de entrada a nuestra red. No solo debemos proteger nuestros servidores, también debemos proteger todos los servicios que corren en él.

#### Software útil para la gestión de vulnerabilidades
- Lynis: Analiza nuestro servidor y nos da recomendaciones

#### Manuales y frameworks útiles para la seguridad de nuestro servidor

- SCAP: El Security Content Automation Protocol es un conjunto de reglas sobre la expresión y manipulación de información relacionada con configuraciones y fallos.
- OWASP: El Open Web Application Security Project es un proyecto de código abierto destinado a pelear contra la inseguridad informática

### El firewall y sus reglas
Comandos

- `sudo ufw status` Muestra el estado (activo/inactivo) y las reglas del firewall. Con el modificador `numbered` me muestra las reglas numeradas
- `sudo ufw (enable, reset, status)` activar, desactivar o ver el estado y reglas de nuestro firewall.
- `sudo ufw allow puerto:` Habilita un puerto
- `sudo ufw enable`Enciende el firewall
- `sudo ufw delete numero_de_regla`Borra una regla
- `sudo ufw allow from direccion_ip proto protocolo to any port puerto`Restringe las direcciones ip que pueden conectarse a cierto puerto. Recordar que SSH trabaja con el protocolo TCP
- `sudo ufw reset` Elimina todas las reglas

Abrir al público únicamente el puerto 80 (http), 443 (https). Para un conjunto de IP’s específicas, habilitar el puerto 22 (ssh)

### Escaneo de puertos con NMAP y NIKTO desde Kali Linux
[Instalación de Kali](https://platzi.com/clases/1583-ethical-hacking/19725-instalacion-del-entorno-de-pruebas-kali-linux/)
- `nmap -sV -sC -0 -oA nombre_de_archivo dirección_ip_del_servidor` Realiza un mapeo de la red
- `nikto -h ip_del_host -o nombre_de_archivo` Escanea vulnerabilidades en un servidor

### Lynis Herramienta de auditoria de seguridad en Linux


- `sudo apt install lynis`Instalación de 

Con el comando sudo `lynis audit system `podremos ver todas las recomendaciones y sugerencias que nos da lynis para mejorar la seguridad de nuestro sistema.


## Links Referencias

[File System Tree Overview](https://help.ubuntu.com/community/LinuxFilesystemTreeOverview)

[Instalación Nagios Ubuntu 20.04 LTS](https://comoinstalar.me/como-instalar-nagios-core-en-ubuntu-20-04-lts/)s