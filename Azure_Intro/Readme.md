# Introducción a la Nube con Azure

## Introducción al computo en la nube

### Qué es la nube: ventajas y características
La nube son instalaciones en las cuales cada una tiene de forma independiente energia electrica, refrigeración y seguridad, son llamados **Centro de Datos**.

Dentro de ellos se encuentran cientos de equipos conectados a Internet para consumir los servicios ofrecidos en la Nube.

Los Centros de Datos se encuentran distribuidos a lo largo del mundo. Azure es el servicio Cloud que tiene mas *DataCenters* desplegados a nivel mundial.

Azure (Microsoft) busca que sus DataCenters sean 100% sustentables utilizando Energias Limpias

### ¿Para qué o Por qué?
Brindar servicios de:
- Cómputo
- Servidores
- Almacenamiento y bases de datos
- Redes
- Inteligencia Artificial
- Software y mas

“Todo lo que puedes hacer en una computadora se puede hacer en la nube pero más: barato, ágil y seguro”

### Modelo basado en consumo
- Pago por servicios usados:
    - Reduce costos operativos
    - Optimiza la infraestructura
    - Escala según las necesidades
- CapEx vs OpEx:
    - Gastos de capital (CapEx): Inversión en infraestructura física, deducible a largo plazo
    - Gastos operativos (OpEx): Inversión en servicios o productos facturados al momento
### Ventajas:
- Confiabilidad y Alta Disponibilidad:
    - Experiencia de usuario sin tiempo de inactividad perceptible, aunque haya errores
- Escalable
    - Vertical: aumentando RAM | CPU a una VM
    - Horizontal: aumentado instancias de recursos

- Elasticidad
    - Las aplicaciones siempre tendrán los recursos necesarios

- Agilidad
    - Instanciar recursos en la nube es muy rápido de implementar y configurar
- Distribución geográfica
    - DataCenter en todo el mundo ofreciendo el mejor rendimiento a cada región

- Recuperación ante desastres
    - Los datos se protegen con copias de seguridad, replicación de datos y distribución geográfica

## Modelos de servicios: IaaS, PaaS, SaaS y serverless

<img src="https://docs.microsoft.com/en-us/learn/azure-fundamentals/fundamental-azure-concepts/media/shared-responsibility-76efbc1e.png">

### On-Premise(Local):
Todo está a cargo de nosotros:
- Equipos
- Adecuación
- Mantenimiento
- Configuración
- Actualización
### IaaS (Infrastructure as a service):
Ofrece mayor flexibilida y control sobre el software:
- Sin CapEx
- Ágil
- Administración compartida
Su desventaja es que se torna complicado al inicio según el grado de detalle que se requiere en aspectos de conocimiento y tiempo.

### PaaS(Platform as a service): 
Entorno administrado por el provedor: VMs, red , infraestructura.
- Solo te preocupas por el desarrollo
- Configuración más ágil que la IaaS.
- Enfocado al despliege de aplicaciones.
Desventajas:
- Puede ser más caro que IaaS.
- Compatibilidad con algunos elementos.
- Dependencias con el provedor.
- Riesgos de seguridad.
- Limitantes de idioma, interfaz o recursos.

### SaaS (Software as a Service):
El proveedor administra el 100% del entorno y los usuarios solo utilizan la aplicación que es ejecuta en la nube.
- Office Online
- Outlook
- CRM
- ERP
Desventajas:
- Se necesita conexión a Internet
- Poco Contrel
- Baja personalización
- Desempeño limitado

### Serverless

- Sí usa servidores.
- El proveedor aprovisiona, escala y administra la infraestructura.
- Ejecuta funciones o fracciones de código.
- Es dirigida por eventos.

Ventajas:

- Altamente escalable.
- Enfocada a la lógica de negocio.
- Ahorro de tiempo.
- Desarrollo ágil.
- Pago por uso.

Desventajas

- No están diseñada para procesos extensos.
- Detalles de desempeño.
- Retos de testing y debugging.


## Tipos de nube: pública, privada e híbrida

### Pública: 
- Accesible a todo el mundo
- Son propiedad de un provedor
- Se distribuye a través de internet

### Privada
- Accesible para miembros de una organización.
- Puede estar on-premise u hospedada.

## Híbrida 
- Conmbinación on-premise, nube pública y privada.

<img src="https://static.platzi.com/media/user_upload/azure-d283dca5-ff03-4521-92a0-7f96209d40d2.jpg">


## Links

[Recursos AZ_900](https://platzi.com/blog/recursos-para-aprobar-el-az-900/)
[Bases AZ_900](https://quique-olazaran.notion.site/quique-olazaran/Microsoft-Fundamentos-AZ-900-aafa18a3543944999292642d57c67f44)
[Test Sample 229q](https://www.qz9.com/cert7185.html)
