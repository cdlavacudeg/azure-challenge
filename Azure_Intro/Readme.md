# Introducción a la Nube con Azure

# Introducción al computo en la nube

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


# Componentes de Azure

## ¿Qué es Azure?

Es un proveedor de servicios en la nube, cuenta con mas de 100 servicios distintos para ser accedidos a través de internet. Cubre prácticamente cualquier necesidad para la nube o de computo.

### Ventajas
- Preparado para el futuro
- Crea a tu ritmo
- Listo para cualquier tipo de nube.
- Confiable
- Cuenta con plataforma Microsoft Learn

### Como funciona Azure:
- A través de la virtualización (se puede realizar de forma local o en la nube en un DataCenter).
- Basado en virtualización abstrae los elementos de una PC recibidos por un Hypervisor.
- Se usa un orquestador encargado de recibir nuestras indicaciones y el fabric controller

### Cuenta con:
- Azure Portal (sitio web para trabajar con las servicios)
- Azure Marketplace (Instancias de recursos desarrollados por terceros)

## Cuentas de Azure

### Recursos
Instancias de los servicios disponibles: Máquinas virtuales, FaaS(Funtion as a service) discos duros y bases de datos.

### Grupos de recursos
Contenedor lógico donde se implementan y administran recursos de Azure (Aplicaciones web). Un recurso puede pertenecer a un solo GR pero puede comunicarse con recursos de otro GR.

### Suscripciones
Agrupación de cuentas de usuario y recursos creados por estas cuentas. Puede tener límites o cuotas definidas.

### Grupos de administración

Administran el acceso, las directivas y cumplimiento de las suscripciones. Las suscripciones heredan las condiciones de su grupo.

## Suscripcionos y grupos de administración
Se necesita de una suscripción de Azure para utilizar sus servicios:

- Desarrollador: pagas por los servicios a medida que los utilices.
- Prueba: experimentar de manera gratuita.
- Suscripción: a través de un partner compras servicios de Azure.
- Estudiante: a través de un email autorizado (.edu)

### Limites
- Facturación: forma de facturarse. Cada suscripción tiene su factura.
- Control de acceso: cada suscripción tiene directivas de acceso.
### ¿Cuándo se necesita más suscripciones?
- Entorno: separación de entornos de trabajos como desarrollo, pruebas, aislamiento de datos, entre otros.
- Estructura Organizacional: limitaciones según presupuesto, tiempo, por equipos o acceso a recursos.
- Facturación: para facilitar el seguimiento de costos según entornos como producción, desarrollo o pruebas.
- Límites por suscripción: Pueden haber algunas limitaciones de hardware por suscripción, entonces es necesario crear nuevas.

### Grupos de Administración

- Consideraciones:
    - Hasta 10 000 grupos de administración en un único directorio.
    - El árbol de grupo de administración puede admitir hasta seis niveles de profundidad.
    - Cada grupo de administración y suscripción solo puede admitir un elemento primario.
    - Cada grupo de administración puede tener muchos elementos secundarios.
    - Todas las suscripciones y grupos de administración están dentro de una única jerarquía en cada directorio.

## Recursos y grupos de recursos
- Todos los recursos deden estar en un grupo, y un solo recurso puede pertenecer solo a un grupo
- No so pueden anidar
- Facilitan la administración y organización.
- Cuando se elimina un grupo de recursos, también elimina todos los recursos contenidos.

### Autorización 
Utilizon permisos de control basados en roles (RBAC, Role Based Access Control)

### Herramientas
- Azure Resource Manager
    - Plantillas en JSON 
    - Administrar recursos por grupo
    - Capacidod de reutilización
    - RBAC.
    - Etiquetas 
    - Facturación

## Regiones
Área geográfica con por lo menos un data center. Algunos servicios son exclusivos de ciertas regiones.
- Canada East
- North Europe
- South Africa North

### Regiones Especiales

- US DoD
- US Gov Virginia
- US Gov Iowa
- China East
- China North

Azure es el proveedor con más regiones globales y en constante expansión.

### Zonas de disponibilidad
Distintos data centers en una misma región equipados con energía de emergencia, refrigeración y redes independientes.

- Propósito:
    - Permiten redudancia de servicios y datos ante errores, desastres u otros imprevistos.

- Consideraciones:
    - No todas las regiones son compatibles con zonas de disponiblidad.Esto puede implicar un costo.

### Pares de regiones

Regiones con por lo menos 500 km de distancia entre ambas para replicar recursos en caso de interrupciones, como:

- Desastres naturales.
- Incendios.
- Disturbios civiles.
- Ausencia de electricidad.
- Daños en la red física.
- Otros.

## [Laboratorio: Crear un sitio en WordPress](https://docs.microsoft.com/es-es/learn/modules/host-a-web-app-with-azure-app-service/)

## [Azure Fundamentals](https://docs.microsoft.com/en-us/learn/modules/intro-to-azure-fundamentals/)
## Links

[Recursos AZ_900](https://platzi.com/blog/recursos-para-aprobar-el-az-900/)
[Bases AZ_900](https://quique-olazaran.notion.site/quique-olazaran/Microsoft-Fundamentos-AZ-900-aafa18a3543944999292642d57c67f44)
[Test Sample 229q](https://www.qz9.com/cert7185.html)
