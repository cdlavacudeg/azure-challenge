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

# Serivicios Azure

## Servicios de análisis de datos

### Tipos de bases de datos
- Estructuradas (SQL)
- No Estructuradas (NoSQL)
### Tipos de datos
- Estructurados
- Semi-estructurados 
- No estructurados

### Azure Cosmos DB
- Servicio de bases de datos NoSQL, elástico e independiente al rendimiento y almacenamiento de las regiones.
- Almacena datos en formato de secuencia de registro de átomos (ARS)
- Se abstraen los datos y se proyectan como una API
- Compatibilidad con SQL, Gremlin, Cassandro, MongoDB
### Azure SQL Database
- Basado en Microsoft SQL Server
- Alto rendimiento
- Confiable
- Administrada 
- Segura 
- Compatible con NoSQL
- Funciona como PaaS controlando las funciones administrativas de una BD:
    - Actualizaciones
    - Revisiones
    - Backups
    - Supervisión

### Azure SQL Managed Instance
- Comando para backup
- Common Language runtime(CLR:Es el entorno de ejecución de código .NET en SQL que se encarga de compilar y convertir el código pára que sea ejecutado en la CPU de la máquin)
- Transacciones entre bases de datos.
- No cuenta con escalado automático.

### Azure Database Migration Service
Migración de una base de datos de cualquier tipo a la nube. 

### Servicios para motores especificos

#### Azure Database for MySQL
- Basado en MySQL communnity edition 5.6,5.7 y 8.0
- Alta disponibilidad
- Escalado en segundos.
- Protección de información.
- Backups automáticos.

#### Azure Database for PostgreSQL
- Basado en PostgreSQL.
- Opción de servidor único:
    - Básico
    - Uso general
    - Optimizado
- Hiperscala (Citus) para cargas de 100 GB o más.

### Servicios de análisis y big data

#### Azure Synapse Analytics
- Análisis de datos de todo tipo: sin procesar, refinados o seleccionados.
- Por medio de recursos sin servidor o provisionados.
- Compatible con SQL y Apache Spark.

#### Azure HDInsight 
- Análisis de datos de open source.
- Procesa grandes volúmenes de datos.
- Puede crear clusters de tipo Spark, Hadoop, Kafka, HBase y más.
- Admite ETLs.

### Azure Databricks
- Descubre información de volúmenes masivos de datos.
- Compatible con Apache Spark.
- Funciona Python, Scala, R, Java, SQL, TensorFlow, PyTorch y Scikit-Learn.

### Azure Data Lake Analytics
- Realiza análisis bajo demanda.
- Enfocado a ETL en lugar de configurar hardware.
- Modelo pay as you go.


## Servicios de cómputo en la nube

### Azure Virtual Machines
- IaaS
- Conveniente para:
    - Pruebas y desarrollo,
    - Ejecutar aplicaciones en la nube
    - Extender recursoso en la nube
    - Recuperación ante desastres
- Migración (lift-and-shift)
- Azure Batch:
    - Conjuntos de VMs.
    - Configuración en minutos de máquenas idénticas
    - Aumento o disminución automático.

### Azure Container Instances
- PaaS para ejecución de contenedores(es como una maquina virtual liviana, sistema operativo o funciones)
    - Sencillo
    - Sin servicios adicionales
    - Permite carga de contenedores

### Azure Kubernetes Service
Contenedores en POD's y la agrupación de estos es un Cluster Node
- Orquestación (automatización y administración) de contenedores en volumen.
- Utilidada de contenedores:
    - Dividir las partes de una aplicación
    - Hacer cambios sin afectar otras partes
    - Hacer pruebas en entornos aislados

### Azure App Service
- PaaS para crear y alojar aplicaciones conectadas a la web.
- Compatible con Windows, Linuk e implementaciones automatizadas.
- Tipos de servicios:
    - Aplicaciones web
    - Aplicaciones de API
    - Operaciones en segundo plano
    - Aplicacionse móviles

### Azure functions(serverless)
- Funciones que responden a eventos:
    - Peticiones REST (API)
    - Temporizador
    - Mensajes de otro servicio
- Escalan automaticamente
- Sin estado. (Se reinicia)
- Con estado ( Durable Functions)

### Azure Logic Apps(serverless)
- Flujos de trabajo basados en eventos
- Cuenta con una GUI
- Se crean en forma visual o en JSON
- Cuenta con más de 200 conectores y bloques.

### Windows Virtual Desktop
- Tener Windows en cualquier lugar
- Compatible con los sistemas operativos más populares o incluso navegadores web.
- Ventajas:
    - Compatibilidad
    - Mejor experiencia de uso
    - Seguridad
    - Rendimiento
    - Inicio de sesión múltiple
    - Licencias propias


## Servicios de Almacenamiento

### Azure Blob Storage
- Almacenamiento no estructurado.
- Sin restricciones.
- Soporta miles de cargas simultáneas.
- Ideal para:
    - Visualizar imágenes o videos.
    - Acceso distribuido.
    - Streaming.
    - Backup.
    - Análisis de datos.
    - Almacenamiento de VMs >8 TB.

### Azure Files
- Recursos compartidos administrados en la nube bajo protocolos SMB y NFS.
- Pueden estar en local o en la nube.
- Ideal para:
    - Cuando muchas aplicaciones usan recursos compartidos.
    - Acceder a recursos desde varias VMs.
    - Similar a OneDrive.

### Niveles de acceso:
- Frecuente: Imágenes o descargas de un sitio web.
- Esporádico (30 días): Reportes mensuales, facturas, etc.
- Archivo (180 días): Copias de seguridad.

## Servicios de red
Nos encargamos de las redes virtuales

### Azure Virtual Network
Permite a los recursos de Azure comunicarse entre sí, con usuarios de internet y equipos cliente en local.
- Funcionalidades:
    - Aislamiento y segmentación
    - Comunicación con internet
    - Comunicación entre recursos
        - Redes virtuales.
        - Puntos de conexión de servicio.
    - Comunicación entre recursos locales
        - Redes virtuales de punto a sitio.
        - Redes privadas virtuales (VPN) de sitio a sitio.
        - Azure ExpressRoute.
    - Enrutamiento del tráfico de red
        - Tablas de ruta.
        - Protocolo de puerta de enlace de borde (BGP).
    - Filtrado del tráfico de red
        - Grupos de seguridad de red.
        - Aplicaciones virtuales de red.
### Azure VPN Gateway
Conecta redes locales a Azure vía VPN de sitio a sitio/punto, a sitio, a través de protocolos IPsec e IKE.

### Azure ExpressRoute
Genera conexiones privadas entre Azure y la infraestructura, de forma confiable y rápida, sin utilizar internet público.

## Inteligencia artificial
- Deep Learning: usa redes neuronales para descubrir, aprender y crecer.
- Machine learning: utiliza datos existentes para entrenar modelos y pronosticar.

### Azure Machine Learning
- PaaS para realizar predicciones conectándose a datos para entrenar y probar modelos.
- Ofrece control completo del diseño y entrenamiento de algoritmos.

### Azure Cognitive Services
- Modelos de ML creados que permiten a una aplicación ver, oír, hablar, entender y pensar. No se necesitan conocimientos en ML o DS.
- Categorías:
    - Lengua
    - Voz
    - Visión
    - Decisión
### Azure Bot Service
- Azure Bot Service.
- Bot Framework.
- Creación de agentes virtuales que pueden usar otros servicios.

## Servicios de DevOps

1. Azure Repos:Repositorios de código fuente centralizado para publicar código y colaborar.
2. Azure Boards:Tableros para gestión de proyectos como Kanban, informes, incidencias, epics, etc.
3. Azure Pipelines:
- Herramienta de automatización de:
    - Continuos Integration (CI)
    - Continuos Delivery (CD)
4. Azure Artifacts:Repositorio para alojar artefactos que se incluyen en el flujo de pruebas o implementación.
5. Azure Test Plans:Herramientas de pruebas automatizadas para garantizar la calidad antes de lanzar software.

### GitHub & GitHub Actions
Git: herramienta de control de versiones.
GitHub: repositorio de código remoto.
1. GitHub Actions:Automatización de flujos de trabajo basado en triggers, especialmente para CI/CD.
### Azure DevTest Labs
Medio automatizado para administrar proceso de compilación, configuración y anulación de VMs y otros recursos.

## Servicios de Monitoreo y supervisión 

### Azure Advisor
Evalúa recursos, brinda recomendaciones y notificaciones de mejora a través de Azure Portal y su API.
- Categorias
    - Confiablilidad
    - Seguridad
    - Rendimiento
    - Costas
    - Excelencia operativa

### Azure monitor
Plataforma que recopila, analiza y muestra datos para tomar acciones basadas en métricas del entorno local y Azure. Las fuentes son diversas como sor SO, aplicaciones, suscripciones.

### Azure Service Health
Brinda una vista presonalizada del estado del los servicios, regiones y recursas de Azure. Problemas de servicio, Mantenimientos planeados, Avisos de estado

## Administración y configuración de entorno
Al trabajar en la nube es necesario tener un buen control y administración del trabajo. Azure nos brinda de herramientas para la administración de trabajo, las cuales pueden ser visuales o basadas en código.
### Tipos de herramientas
- Herramientas graficas: Azure portal, Azure Mobile App, en ambos se puede ejecutar código con bash o  PowerShell a través de, Cloud Shell "La terminal incrustada" en el navegador web

- Herramientas de comandos: (Azure PowerShell, Azure CLI, Cloud Shell)

- Azure resources manager templates: Es un administrador de plantillas de recursos.
    - Formato JSON, 
    - Se comprueban antes de ejecutarse, 
    - Se define el estado y configuración de cada recurso, la plantila hace el resto



## Servicios Serverless
Se configura la maquina se abstraen los servidore
- Azure Functions
    - Alojamiento de métodos o funciones que se ejecutan enrespuesta a eventos:
        - Solicitudes HTTP
        - Temporizadores
        - Mensajes
        - Acciones
    - Ventajas:
        - Escalado automático.
        - Pago por función ejecutada.
        - Con o sin estado.
        - Tareas de orquestación (durable functions).
    - Lenguajes compatibles
        - C#
        - JavaScript
        - Python
        - TypeScript
        - Java
        - Shell
- Azure Logic Apps
    - No-code/Low-code.
    - Ideal par automatizar y organizar.
    - Integra aplicaciones, datos y sistemas.


## Servicios de IoT (Internet of things)

*El Internet of Things (IoT), describe la red de objetos físicos (cosas), que llevan sensores integrados, software y otras tecnologías, con el fin de conectar e intercambiar datos con otros dispositivos y sistemas a través de Internet.*

### ¿De dónde vienen los datos?

#### Sensores:

- Temperatura.
- Humedad.
- Códigos (barras, QR).
- Proximidad.
- Ubicación geográfica.
- Sonido.
- Movimiento.
- Biométricos.

### Azure IoT Hub
- Centro de mensajes entre aplicaciones IoT y dispositivos.
- Permite control remoto manual o automatizado de dispositivos.
- Cuenta con supervisión

### Azure IoT Central
- Basado en IoT Hub con interfaz visual.
- Posee plantillas para escenarios comunes.
### Azure Sphere
- Avnet Azure Sphere MT3620 Starter Kit
- Seeed MT3620 Mini Dev Board
- Kit de desarrollo de Seeed Azure Sphere MT3620
- Partes:
    - Unidad de Microcontrolador (MCU).
    - Sistema operativo (SO).
    - Servicio de seguridad (AS3).
- Requisitos:
    - Kit de desarrollo.
    - Windows
        - Visual Studio.
        - Visual Studio Code.
        - Línea de comandos con CMake.
    - Linux
        - Visual Studio Code.
        - Línea de comandos con CMake.


## Servicios de Seguridad

### Azure Security Center
- Servicio que brinda visibilidad del nivel de seguridad de los servicios en Azure y local.
- Supervisa la configuración de seguridad.
- Aplica cambios automáticamente.
- Brinda recomendaciones.
- Detecta y bloquea amenazas de malware con ML.
- Detecta ataques e investiga amenazas.
- Proporciona control de acceso Just-in-Time.
### Puntuación de seguridad
- Es la medida del nivel de seguridad y permite:
    - Notificar el estado actual.
    - Mejorar el nivel.
    - Compara puntos de referencia.
### Azure Sentinel
- SIEM en la nube de análisis de seguridad y amenazas.
    - Recopila datos en volumen.
    - Detecta amenazas
    - Investiga con IA.
    - Responde a incidentes.
### Azure Key Vault
- Servicio centralizado para almacenar datos confidenciales.
- Administra:
    - Secretos.
    - Claves de cifrado.
    - Certificados SSL/TLS.
    - Respaldos por módulos de seguridad de hardware (HMS).
### Azure Dedicated Host
- Servidores físicos que no se comparten con otros inquilinos y/o aplicaciones.
- Ofrece visibilidad y control.
- Asegura requisitos de cumplimiento.
- Personalizable.
- Puede tener mayor costo.

### Servicios de Seguridad de Red
- Azure Firewall
- Azure DDoS Protection
### Servicios de Identidad
- Autenticación (AuthN): Solicitar credenciales legítimas.
- Autorización (AuthZ): Establecer el nivel de acceso a una persona o servicio autenticado.
### Azure Active Directory
- Multi-Factor Authentication
- Inicio de Sesión Único (SSO)

## Privacidad, cumplimiento y protección de datos

### ¿Cumplimiento?
Cumplir con una ley, estándar, conjunto de directrices, normas o requerimientos.

- Globales
- Gubernamentales
- Sectoriales
- Regionales

### Declaración de privacidad

- Explica qué datos personales recopila Microsoft, cómo los usa y para qué.
- Abarca todos sus servicios, sitios, software, servidores y dispositivos.

### Términos de los servicios en línea
- Contrato legal entre Microsoft y el cliente.
- Detalla las obligaciones de ambas partes respecto al procesamiento y seguridad de los datos.
- Aplica a servicios bajo licencia.
### Anexo de protección de datos (Data Protection Addendum)
- Define términos de seguridad y procesamiento de datos para servicios en línea:
    - Cumplimiento de leyes
    - Revelación de datos
    - Seguridad de datos

## Planeación y administración de costos
### Calculadora de costo total de propiedad(TOC)
- Ayuda a calcular los costos de Azure vs. local.
- Deben considerarse costos indirectos, diferencias de zona, promedios, etc.
### ¿Cómo funciona?
1. Definir cargas de trabajo.
1. Ajustar supuestos.
1. Consultar informe.

### Comprar servicios
- Contratos Enterprise (B2B).
- En la web.
- Proveedor de soluciones (Microsoft partner)

### ¿Qué afecta a los costos?
- Tipo de recurso.
- Medidores de uso: tiempo, tráfico, tamaños y cantidades.
- Uso de recursos.
- Región.

### Reducción de costos
#### ¿Qué afecta a los costos?
- Estimar antes de implementar.
- Azure Advisor.
- Limitar presupuestos.
- Pagar por adelantado.
- Licenciamiento.
- Disponer de regiones y ubicaciones de bajo costo.
- Investigar ofertas de ahorro.
- Azure Cost Management + Billing.
- Etiquetas para identificar costos.
- Cambiar el tamaño de recursos.
- Desasignar recursos.
- Eliminar recursos no utilizados.
- Migrar de IaaS a PaaS.


## Acuerdos de nivel de servicio y ciclo de vida

Contrato formal entre empresa de servicios y cliente.
Define estándares de rendimiento que Microsoft se compromete a brindar.

### ¿Qué incluyen?

- Introducción.
- Términos generales.
- Detalles del SLA (Service Level Agreement).

### Importancia
- Entender:
    - Garantías de servicio.
    - Hacerlas efectivas.
    - Disponibilidades.
- Creditos de servicio
    - <95% 100%

### Elementos para aumentar SLA

- Tipo de discos.
- Niveles superiores de servicio.
- Redundancia en regiones.
- Redundancia en zonas de disponibilidad.
### Ciclo de vida
Forma en que cada servicio está disponible.

- Fases:
    - Desarrollo
    - Preliminar
    - Disponibilidad general (GA)
    - Desaconsejado


[Contrato de nivel de servicio](https://azure.microsoft.com/es-mx/support/legal/sla/)
## Laboratorios
[Azure Database Migration](https://azure.microsoft.com/es-mx/services/database-migration/)

[Compare Azure SQL Database & SQL Managed Instance](https://docs.microsoft.com/en-us/azure/azure-sql/database/features-comparison)

[Creacion de bases de datos SQL](https://docs.microsoft.com/es-es/learn/modules/azure-database-fundamentals/exercise-create-sql-database)

[Choose the best tools for managing and configuring your Azure environment](https://docs.microsoft.com/en-us/learn/modules/management-fundamentals/)
## Links

[Recursos AZ_900](https://platzi.com/blog/recursos-para-aprobar-el-az-900/)

[Bases AZ_900](https://quique-olazaran.notion.site/quique-olazaran/Microsoft-Fundamentos-AZ-900-aafa18a3543944999292642d57c67f44)

[Test Sample 229q](https://www.qz9.com/cert7185.html)

[Test Online](https://en.daypo.com/search.php?t=az-900)