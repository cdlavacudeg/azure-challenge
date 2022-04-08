# Azure Microsoft Learn Laboratories

----
# Introduction to Azure fundamentals
Azure is a cloud computing platform with a set of services that can help to build solutions to meet business goals.

Services range from hosting in the cloud to running fully virtualized computers. Azure provides a wealth of cloud-based services like remote storge,database hosting, and centralized account management.

## What is Azure fundamentals?

Is a series of six learning paths that familiarize you to Azure and its many services and features.

It can prepare you for the certification [AZ-900: Microsoft Azure Fundamentals](https://docs.microsoft.com/en-us/learn/certifications/exams/az-900) This exam includes six knowledge areas:

|AZ-900 Domain Area |Weight|
|-----------|--------|
|Describe cloud concepts|20-25%|
|Describe core Azure services|15-20%|
|Describe core solutions and management tools on Azure|10-15%|
|Describe general security and network security features|10-15%|
|Describe identity, governance, privacy and compliance features|20-25%|
|Describe Azure cost management and Service Level Agreements|10-15%|

## What is cloud computing?
It's the delivery of computing services over the internet, which is otherwiso known as the cloud.Like:
- servers
- storage
- databases
- networking
- software
- analytics
- intelligence

You only pay for the resources that you use
## What is Azure?

Is  a continually expanding set of cloude services that help your organization meet your curren and future business challenges. Azure gives you the freedom to build, manage, and deploy applications on a massive global network using your favorite tools and frameworks.

## What does Azure offer
- Be ready for the future: supports development today and product vision for tomorrow.
- Build on your terms: Build how you want and deploy where you want to.
- Operate hybrid seamlessly: On-premises, in the cloud , and at the edge
- Trust your cloud:

## What can I do with Azure 
You have more than 100 services that enable you to de everything from running your existing application on virtual machines, to exploring new software paradigms, such as intelligent bots and mixed reality.

## How does Azure work?
Uses virtualization separates hadware and OS using an hypervisor.

## What is the Azure portal?

Is a web-based, unified console that provides an alternative to command-line tools. With the Azure portal, you can manage your Azure subscription by using a graphical user interface. You can:

- Build, manage and monitor everything from simple web apps to complex cloud deployments.
- Create custom dashboards for an organized view of resources.
- Configure accessibility options for and optimal experience.

## What is Azure Marketplace?
It helps connect users with Microsoft partners, independent software vendors, and startups that are offering their solutions and services, which are optimized to run on Azure. 

Azure Marketplace customers can find, try, purchase and provision applications and services from hundreds of leading service providers. All solutions and services are certified to run on Azure.

## Tour of Azure services

### Azure overview

<img src="https://docs.microsoft.com/en-us/learn/azure-fundamentals/intro-to-azure-fundamentals/media/azure-services-6c41a736.png">

Main ten categories:

1. Compute: Escale computing capability on demand, pay for the resorces you use. Hosting applications ad services.
    - Virtual machines
    - Virtual machines Scale sets
    - Kubernets Service
    - Service Fabric
    - Batch
    - Container Instances
    - Functions (event-driver,serverless compute service)

2. Networking: Link compute resorces and provide access to applications.
    - Virtual Network (VPN-> virtual private network)
    - Load Balancer
    - Application Gateway
    - VPN Gateway
    - DNS
    - Centent Delivery Network
    - DDoS Protection
    - Traffic Manager
    - ExpressRoute
    - Network Watcher
    - Firewall
    - Virtual Wan

3. Storage: Escale your data with several common caracteristics (Durable, Secure, Scalable,Managed,Accessible)
    - Blob storage (very large objects->video or bitmaps)
    - File storag
    - Queue storage
    - Table storage

4. Movil: cross platform apps, cognitive services, connecting to on-premise resources such as SAP,Oracle, SQL Server, and Sharepoint.
    - offline data synchronization
    - connectivity to on-premises data.
    - broadcasting push notifications
    - autoscaling to match business needs

5. Database: store a wide variety of data types and volumes
    - Cosmos DB
    - SQL, MySQL, PostgreSQL database

6. Web: Build, deploy, manage
7. Iot(Internet of things)
8. Big data: cluster services, analytics
9. AI(Artificial Intelligence)
10. DevOps


## Get Started with Azure accounts

To create and use Azure services, you need an Azure subscription. When you're working with your own applications and business needs, you need to create an Azure account, and a subscription will be created for you. After you've created an Azure account, you're free to create additional subscriptions. For example, your company might use a single Azure account for your business and separate subscriptions for development, marketing, and sales departments. After you've created an Azure subscription, you can start creating Azure resources within each subscription.
<img src="https://docs.microsoft.com/en-us/learn/azure-fundamentals/intro-to-azure-fundamentals/media/scope-levels-12669ee1.png">

## Learn more
[Azure free account](https://azure.microsoft.com/free/)
[Free account for Students](https://azure.microsoft.com/free/students/)
[Create an Azure account](https://docs.microsoft.com/en-us/learn/modules/create-an-azure-account/)

---
# Azure fundamental concepts

## Discuss different types of cloud models

### What are public, private and hybrid clouds

|Deployment model |Description|
|--------|------|
|Public cloud|Services are offered over the public internet and available to anyone who wants to purchase them. Cloud resources, such as servers and storage, are owned and operated by a third-party cloud service provider, and delivered over the internet.|
|Private cloud|A private cloud consists of computing resources used exclusively by users from one business or organization. A private cloud can be physically located at your organization's on-site (on-premises) datacenter, or it can be hosted by a third-party service provider.|
|Hybrid cloud |A hybrid cloud is a computing environment that combines a public cloud and a private cloud by allowing data and applications to be shared between them.|

### Cloud model comparison
|Public cloud|Private cloud|Hybrid cloud|


## What are some cloud computing advantages?
- High availability: Depending on the service-level-agreement(SLA),cloud-based apps can provide a continuou experience with no apparent downtime.

- Scalability:
    - Vertically: Increase compute capacity by adding RAM or CPUs to a virtual machine.
    - Horizontally: Increase compute capacity by adding instances of resources, such as adding VMs to the configuration.

- Elasticity: Take advantage of autoscaling (The apps always have the resources they need)

- Agility: Deploy and configure cloud-based resources quickly as the app requirements change
- Geo- distribution:You can deploy apps and data to regional datacenters arronud the globe.
- Disaster recovery

## Capital expenses vs. operating expenses
There are two different types of expenses that you should consider:

- Capital Expenditure (CapEx) is the up-front spending of money on physical infrastructure, and then deducting that up-front expense over time. The up-front cost from CapEx has a value that reduces over time.
- Operational Expenditure (OpEx) is spending money on services or products now, and being billed for them now. You can deduct this expense in the same year you spend it. There is no up-front cost, as you pay for a service or product as you use it.


To summarize, CapEx requires significant up-front financial costs, as well as ongoing maintenance and support expenditures. By contrast, OpEx is a consumption-based model, so you are only responsible for the cost of the computing resources that it uses.

- Cloud computing is a consumption-based model: Cloud service providers operate on a consumption-based model, which means that end users only pay for the resources that they use. Whatever they use is what they pay for.

A consumption-based model has many benefits, including:

- No upfront costs.
- No need to purchase and manage costly infrastructure that users might not use to its fullest.
- The ability to pay for additional resources when they are needed.
- The ability to stop paying for resources that are no longer needed.

## Cloud service models

### IaaS (Infraestructure as a service)
This cloud service model is the closest to managing physical servers(you rent hadware); a cloud provider will keep the hardware up-to-date, but operating system maintenance and network configuration is up to you as the cloud tenant.

#### Advantages
- No CapEx
- Agility
- Management: The shared responsibility model applies; the user manages and maintains the services they have provisioned, and the cloud provider manages and maintains the cloud infrastructure.
- Compsuption-based model
- No deep technical skills are required
- Cloud benefits
- Flexibility

### PaaS (Platform as a service)
This cloud service model is a managed hosting environment. The cloud provider manages the virtual machines and networking resources, and the cloud tenant deploys their applications into the managed hosting environment. 
#### Advantages
- No CapEx
- Agility: PaaS in more agile than IaaS.
- Compsuption-based model
- No deep technical skills are required to deploy, use, and gain the benefits of PaaS.
- Cloud benefits
- Productivity: Users can focus on application deployment only

#### Disadvantages
- Platform limitations: There can be some limitations to a cloud platform that might affect how an application runs. 

### SaaS (Software as a service)
In this cloud service model, the cloud provider manages all aspects of the application environment, such as virtual machines, networking resources, data storage, and applications. The cloud tenant only needs to provide their data to the application managed by the cloud provider. 

#### Advantages
- No CapEx
- Agility: Users can provide staff with access to the latest software quickly and easily
- Pay-as-you-go pricing model: subscription model

<img src="https://docs.microsoft.com/en-us/learn/azure-fundamentals/fundamental-azure-concepts/media/shared-responsibility-76efbc1e.png">

### serverless computing?
Like PaaS, serverless computing enables developers to build applications faster by eliminating the need for them to manage infrastructure. With serverless applications, the cloud service provider automatically provisions, scales, and manages the infrastructure required to run the code. Serverless architectures are highly scalable and event-driven, only using resources when a specific function or trigger occurs.

It's important to note that servers are still running the code. The "serverless" name comes from the fact that the tasks associated with infrastructure provisioning and management are invisible to the developer. This approach enables developers to increase their focus on the business logic, and deliver more value to the core of the business. Serverless computing helps teams increase their productivity and bring products to market faster, and it allows organizations to better optimize resources and stay focused on innovation.

*Serverless computing* is the abstraction of servers, infrastructure, and operating systems. With serverless computing, Azure takes care of managing the server infrastructure and the allocation and deallocation of resources based on demand. Infrastructure isn't your responsibility. Scaling and performance are handled automatically. You're billed only for the exact resources you use. There's no need to even reserve capacity.

---

# Explore Azure compute services

## Overviw of Azure compute services
It provides computing resources such as disks, processors, memory, networking, and operating systems. The resources are available on-demand and can typically be made available in minutes or even seconds. You pay only for the resources you use, and only for as long as you're using them.

Some of the most prominent services are:

### Azure virtual machines

Virtual machines are software emulations of physical computers. They include a virtual processor, memory, storage and networking resources. VMs host an operating system, and you can install and run software just like a physical computer. When using a remote desktop client, you can use and control the VM as if you were sitting in front of it.

VMs are an ideal choice when you need:
- Total control over the operating system (OS).
- The ability to run custom software
- To use custom hosting configurations


### Virtual machine scale sets

They are an Azure compute resource that you can use to deploy and manage a set of identical VMs. With all VMs configured the same, virtual machine scale sets are designed to support true autoscale.

For this reason, it's easier to build large-scale services targeting big compute, big data, and containerized workloads. As demand goes up, more VM instances can be added. As demand goes down, VM instances can be removed. The process can be manual, automated, or a combination of both.

### Azure Batch
Enables large-scale parallel and high-performance computing(HPC) batch jobs with the ability to scale to tens, hundreds or thousands of VMs.

When you're ready to run a job, Batch does the following:

- Starts a pool of compute VMs for you.
- Installs applications and staging data.
- Runs jobs with as many tasks as you have.
- Identifies failures.
- Requeues work.
- Scales down the pool as work completes.

There might be situations in which you need raw computing power or supercomputer-level compute power. Azure provides these capabilities.
### Containers and Kubernets

[Container instances]() and [Azure Kubernets Service]() are Azure compute resources that you can use to deploy ond manage containers. Containers are lighweight, virtualized **application** enviroments. They're designed to be quickly created, scaled out, and stopped dynamically. 

If you want to run multiple instances of an application on a single host machine, containers are an excellent choice.

Containers are often used to create solutions by using a microservice architecture. This architecture is where you break solutions into smaller, independent pieces. 

#### Manage containers

Containers are managed through a container orchestrator, which can start, stop, and scale out application instances as needed. There are two ways to manage both Docker and Microsoft-based containers in Azure: Azure Container Instances and Azure Kubernetes Service (AKS).

##### Azure Container Instances

Azure Container Instances offers the fastest and simplest way to run a container in Azure without having to manage any virtual machines or adopt any additional services. It's a platform as a service (PaaS) offering that allows you to upload your containers, which it runs for you.

#### Azure Kubernetes Service

The task of automating, managing, and interacting with numerous containers is known as orchestration. Azure Kubernetes Service is a complete orchestration service for containers with distributed architectures and large volumes of containers.



### App Service
It allows you to quickly build, deploy, and scale enterprise-grade web, mobile and API apps running on any platform. You can meet rigorous performance, scalability, security and compliance requirements while using a fully managed platform to perform infraestructure maintenance. App Service is a platfor as a service offering

App Service enables you to build and host web apps, background jobs, mobile back-ends, and RESTful APIs in the programming language of your choice without managing infrastructure.  offers automatic scaling and high availability. App Service supports Windows and Linux and enables automated deployments from GitHub, Azure DevOps, or any Git repo to support a continuous deployment model.

## Functions 
They're ideal when you're concerned only about the code running your service and not the underlying platform or infrastructure. They're commonly used when you need to perform work in response to an event (often via REST request), timer, or message from another Azure service.

Functions scale automatically based on demand, so they're a solid choice when demand is variable.

Using a virtual machine-based approach, you'd incur costs even when the virtual machine is idle. With functions, Azure runs your code when it's triggered and automatically deallocates resources when the function is finished. In this model, you're only charged for the CPU time used while your function runs.

Functions can be either stateless or stateful. When they're stateless (the default), they behave as if they're restarted every time they respond to an event. When they're stateful (called Durable Functions), a context is passed through the function to track prior activity.

Functions are a key component of serverless computing. They're also a general compute platform for running any type of code. If the needs of the developer's app change, you can deploy the project in an environment that isn't serverless. This flexibility allows you to manage scaling, run on virtual networks, and even completely isolate the functions.

## Logic apps

Logic apps are similar to functions. Both enable you to trigger logic based on an event. Where functions execute code, logic apps execute workflows that are designed to automate business scenarios and are built from predefined logic blocks.

Every Azure logic app workflow starts with a trigger, which fires when a specific event happens or when newly available data meets specific criteria. Many triggers include basic scheduling capabilities, so developers can specify how regularly their workloads will run. Each time the trigger fires, the Logic Apps engine creates a logic app instance that runs the actions in the workflow. These actions can also include data conversions and flow controls, such as conditional statements, switch statements, loops and branching.

You create logic app workflows by using a visual designer on the Azure portal or in Visual Studio. The workflows are persisted as a JSON file with a known workflow schema.

## Azure Virtual Desktop

Azure Virtual Desktop is a desktop and application virtualization service that runs on the cloud. It enables your users to use a cloud-hosted version of Windows from any location. Azure Virtual Desktop works across devices like Windows, Mac, iOS, Android and Linux. It works with apps that you can use to access remote desktops and apps. You can also use most modern browsers to access Azure Virtual Desktop-hosted experiences.

Users have the freedom to connect to Azure Virtual Desktop with any device over the internet. They use a Azure Virtual Desktop client to connect to their published Windows desktop and applications. This client could either be a native application on the device, or the Azure Virtual Desktop HTML5 web client.

You can make sure your session host virtual machines (VMs) run near apps and services that connect to your datacenter or the cloud. This way your users stay productive and don't encounter long load times.

User sign-in to Azure Virtual Desktop is fast because user profiles are containerized by using FSLogix. At sign-in, the user profile container is dynamically attached to the computing environment. The user profile is immediately available and appears in the system exactly like a native user profile.

You can provide individual ownership through personal (persistent) desktops. For example, you might want to provide personal remote desktops for members of an engineering team. Then they can add or remove programs without impacting other users on that remote desktop.

--- 
# Explore Azure networking services

## Azure Virtual network fundamentals
You want to keep your existing IP addressing scheme and network appliances while ensuring that any data transfer is secure.

### What is azure virtial networking?
Azure virtual networks enable Azure resources, such as VMs, web apps, and databases, to communicate with each other, with users on the internet, and with your on-premises client computers. You can think of an Azure network as an extension of your on-premises network with resources that links other Azure resources.

Azure virtual networks provide the following key networking capabilities:

- Isolation and segmentation
- Internet communications
- Communicate between Azure resources
- Communicate with on-premises resources
- Route network traffic
- Filter network traffic
- Connect virtual networks

### Isolation and segmentation
Azure Virtual networks allocs you to create multiple isolated virtual networks.When you set up a virtual network, you define a private IP address space by using either public or private IP address ranges. The public IP range only exist within
the virtual network and is not internet routable. You can divide that IP address space into subnets and allocate part of the difned address to each named subnet.

For name resolution, you can use the use the name resolution service that's built in to Azure. You can also can configure the virtual network to use either on internal or an external DNS server.

### Internet communications
A VM in Azure con connect to the internet by default. You can enable incoming connections from the internet by assigning a public IP address to the VM or putting the VM behind a public load balancer. For VM managenent, You con conect via Azure CLI, Remote Desktop Protocol, or Secure Shell.

### Communicate between Azure resources
You'll want to enable Azuer resources to communicate securely with each other. You can do that in one of two ways:

- **Virtual networks** can connect not only VMs but other Azure resorces, such as the App Service Environment for Power Apps, Azure Kubernets Service, and Azure Virtual machine scale sets.

- **Service end points** You can use service endpoints to connect to other Azure resource types, such as azure SQL databases and storage accounts. This approach enables you to link multiple Azure resources to virtual networks to improve security and provide optimal routing between resorces.

### Communicate with on-premises resources

Azure virtual networks enable you to link resources together in your on-premises enviroment and within your Azure subscription. In effect, you can create a network that spans both your local and cloud environments. There are three mechanisms for you to achive this connectivity:

- **Point-to-site virtual private networks** The client computer initiates an encryted VPN conection to connect that computer to the Azure virtual network.

- **Site-to-site virtual private networks** A site-to-site VPN links your on-premises VPN device or gateway to the Azure VPN gateway in an virtual network. The connection is encryted and works over the internet.

- **Azure ExpressRoute** For enviroments where you need greater bandwith and even higher levels of security, Azure ExpressRoute is the best approach.It provides a dedicated private connectivity to Azure that doesn't travel over the internet.

### Route nework traffic

By default, Azure routes traffic between subnets on any connected virtual networks, on-premises networks, and internet. You also can control routing and override those settings, as follows:
- **Route tables** A route table allows you to define rules about how traffic should be directed. You con create custom route tables that control how packets are routed between subnets.

- **Border Gateway Protocol(BGP)** Works with Azure VPN gateways, Azure Route Server, or ExpresRoute to propagate on-premises BGP routes to Azure virtual networks.

### Filter network traffic
Azure virtual networks enable you to filter traffic between subnets by using the following approaches:

- **Network security groups** A network security group is an Azure resource that can contain multiple inbound and outbound security rules. You can define these rules to allow or block traffic, based on factors such as source and destination IP address, port and protocol.

- **Network virtual appliances** A network virtual appliance is a specialized VM that can be compared to a hardened network appliance. A network virtual appliance carries out a particular network function, such as running a firewall or performing wide area network (WAN) optimization.


### Connect virtual networks
You can link virtual networks together by using virtual network peering. Peering enables resources in each virtual network to communicate with each other. These virtual networks can be in separate regions, which allows you to create a global interconnected network through Azure.

UDR is user-defined routes. UDR is a significant update to Azure’s Virtual Networks as this allows network administrators to control the routing tables between subnets within a VNet, as well as between VNets, thereby allowing for greater control over network traffic flow.

### [Azure virtual networks settings](https://docs.microsoft.com/en-us/learn/modules/azure-networking-fundamentals/azure-virtual-network-settings)


## [Azure VPn Gateway fundamentals](https://docs.microsoft.com/en-us/learn/modules/azure-networking-fundamentals/azure-vpn-gateway-fundamentals)

VPNs use an encrypted tunnel within another network. They're typically deployed to connect two or more trusted private networks to one another over an untrusted network (typically the public internet). Traffic is encrypted while traveling over the untrusted network to prevent eavesdropping or other attacks.

### VPN gateways
Is a type of virtual network gateway. Azure VPN Gateway instances are deployed in a dedicated subnet of the virtual network and enable the following connectivity:
- Connect on-premises datacenters to virtual networks through a site-to-site connection.
- Connect individual devices to virtual networks through a point-to-site connection.
- Connect virtual networks to other virtual networks through a network-to-network connection.

All data is encrypted inside a private tunnel as it crosses the internet. You can deploy only one VPN gateway in each virtual network, but you can use one gateway to connect to multiple locations, which includes other virtual networks or on-premises datacenters.

When you deploy a VPN gateway, you specify the VPN type: either policy-based or route-based. The main difference between these two types of VPNs is how traffic to be encrypted is specified. 


#### Policy-based VPNs

Policy-based VPN gateways specify statically the IP address of packets that should be encrypted through each tunnel. This type of device evaluates every data packet against those sets of IP addresses to choose the tunnel where that packet is going to be sent through.

Key features of policy-based VPN gateways in Azure include:

- Support for IKEv1 only.
- Use of static routing, where combinations of address prefixes from both networks control how traffic is encrypted and decrypted through the VPN tunnel. The source and destination of the tunneled networks are declared in the policy and don't need to be declared in routing tables.
- Policy-based VPNs must be used in specific scenarios that require them, such as for compatibility with legacy on-premises VPN devices.

#### Route-based VPNs
If defining, which IP addresses are behind each tunnel is too cumbersome, route-based gateways can be used. With route-based gateways, IPSec tunnels are modeled as a network interface or virtual tunnel interface. IP routing (either static routes or dynamic routing protocols) decides, which one of these tunnel interfaces to use when sending each packet. Route-based VPNs are the preferred connection method for on-premises devices. They're more resilient to topology changes such as the creation of new subnets.

Use a route-based VPN gateway if you need any of the following types of connectivity:

-Connections between virtual networks
-Point-to-site connections
-Multisite connections
-Coexistence with an Azure ExpressRoute gateway

Key features of route-based VPN gateways in Azure include:

- Supports IKEv2
- Uses any-to-any (wildcard) traffic selectors
- Can use dynamic routing protocols, where routing/forwarding tables direct traffic to different IPSec tunnels In this case, the source and destination networks aren't statically defined as they are in policy-based VPNs or even in route-based VPNs with static routing. Instead, data packets are encrypted based on network routing tables that are created dynamically using routing protocols such as Border Gateway Protocol (BGP).

###  Deploy VPN gateways
Before you can deploy a VPN gateway, you'll need some Azure and on-premises resources.

#### Required Azure resources
You'll need these Azure resources before you can deploy an operational VPN gateway:

- Virtual network. Deploy a virtual network with enough address space for the additional subnet that you'll need for the VPN gateway. The address space for this virtual network must not overlap with the on-premises network that you'll be connecting to. You can deploy only one VPN gateway within a virtual network.

- GatewaySubnet. Deploy a subnet called GatewaySubnet for the VPN gateway. Use at least a /27 address mask to make sure you have enough IP addresses in the subnet for future growth. You can't use this subnet for any other services.

- Public IP address. Create a Basic-SKU dynamic public IP address if you're using a non-zone-aware gateway. This address provides a public-routable IP address as the target for your on-premises VPN device. This IP address is dynamic, but it won't change unless you delete and re-create the VPN gateway.

- Local network gateway. Create a local network gateway to define the on-premises network's configuration, such as where the VPN gateway will connect and what it will connect to. This configuration includes the on-premises VPN device's public IPv4 address, and the on-premises routable networks. This information is used by the VPN gateway to route packets that are destined for on-premises networks through the IPSec tunnel.

- Virtual network gateway. Create the virtual network gateway to route traffic between the virtual network and the on-premises datacenter or other virtual networks. The virtual network gateway can be either a VPN or ExpressRoute gateway, but this unit only deals with VPN virtual network gateways. (You'll learn more about ExpressRoute in a separate unit later in this module.)

- Connection. Create a connection resource to create a logical connection between the VPN gateway and the local network gateway.

    - The connection is made to the on-premises VPN device's IPv4 address as defined by the local network gateway.
    - The connection is made from the virtual network gateway and its associated public IP address.

    You can create multiple connections.

## [Azure ExpressRoute fundamentals](https://docs.microsoft.com/en-us/learn/modules/azure-networking-fundamentals/express-route-fundamentals)

ExpressRoute lets you extend your on-premises networks into the Microsoft cloud over a private connection with the help of a connectivity provider. With ExpressRoute, you can establish connections to Microsoft cloud services, such as Microsoft Azure and Microsoft 365.

ExpressRoute connections don't go over the public Internet. This allows ExpressRoute connections to offer more reliability, faster speeds, consistent latencies, and higher security than typical connections over the Internet.

### Features and benefits of ExpressRoute
There are several benefits to using ExpressRoute as the connection service between Azure and on-premises networks.

- Layer 3 connectivity between your on-premises network and the Microsoft Cloud through a connectivity provider. Connectivity can be from an any-to-any (IPVPN) network, a point-to-point Ethernet connection, or through a virtual cross-connection via an Ethernet exchange.
- Connectivity to Microsoft cloud services across all regions in the geopolitical region.
- Global connectivity to Microsoft services across all regions with the ExpressRoute premium add-on.
- Dynamic routing between your network and Microsoft via BGP.
- Built-in redundancy in every peering location for higher reliability.
- Connection uptime SLA.
- QoS support for Skype for Business.

### Connectivity to Microsoft cloud services
ExpressRoute enables direct access to the following services in all regions:

- Microsoft Office 365
- Microsoft Dynamics 365
- Azure compute services, such as Azure Virtual Machines
- Azure cloud services, such as Azure Cosmos DB and Azure Storage
- Microsoft 365 was created to be accessed securely and reliably via the internet. For this reason, we recommend the use of ExpressRoute for specific scenarios. 

### Security considerations
With ExpressRoute, your data doesn't travel over the public internet, so it's not exposed to the potential risks associated with internet communications. ExpressRoute is a private connection from your on-premises infrastructure to your Azure infrastructure. Even if you have an ExpressRoute connection, DNS queries, certificate revocation list checking, and Azure Content Delivery Network requests are still sent over the public internet.

--- 
## Explore Azure Storage services

### [Azure Storage account fundamentals](https://docs.microsoft.com/en-us/learn/modules/azure-storage-fundamentals/azure-storage-accounts)

### Disk storage fundamentals

Provides disks for Azure virtual machines, Applications and other services can access and use these disks as needed, similar to how they would in on-premises scenarios.

Disks come in many different sizes and performance levels, from solid-state drives (SSDs) to traditional spinning hard disk drives (HDDs), with varying performance tiers.

### Azure Blob storage fundamentals
It can store massive amounts of data, such as text or binary data. Azure Blob Storage is unstructured, meaning that there are no restrictions on the kinds of data it can hold. Blob Storage can manage thousands of simultaneous uploads, massive amounts of video data, constantly growing log files, and can be reached from anywhere with an internet connection.

One advantage of blob storage over disk storage is that it does not require developers to think about or manage disks; data is uploaded as blobs, and Azure takes care of the physical storage needs.

Blob Storage is ideal for:

- Serving images or documents directly to a browser.
- Storing files for distributed access.
- Streaming video and audio.
- Storing data for backup and restore, disaster recovery, and archiving.
- Storing data for analysis by an on-premises or Azure-hosted service.
- Storing up to 8 TB of data for virtual machines.

### Azure Files fundamentals

Azure Files offers fully managed file shares in the cloud that are accessible via the industry standard Server Message Block and Network File System (preview) protocols. Azure file shares can be mounted concurrently by cloud or on-premises deployments of Windows, Linux, and macOS.

Typical usage scenarios would be to share files anywhere in the world, diagnostic data, or application data sharing.

Use Azure Files for the following situations:

- Many on-premises applications use file shares. Azure Files makes it easier to migrate those applications that share data to Azure. If you mount the Azure file share to the same drive letter that the on-premises application uses, the part of your application that accesses the file share should work with minimal changes, if any.
- Store configuration files on a file share and access them from multiple VMs. Tools and utilities used by multiple developers in a group can be stored on a file share, ensuring that everybody can find them, and that they use the same version.
- Write data to a file share, and process or analyze the data later. For example, you might want to do this with diagnostic logs, metrics, and crash dumps.

### Understand Blob access tiers

Data stored in the cloud can grow at an exponential pace. To manage costs for your expanding storage needs, it's helpful to organize your data based on attributes like frequency of access and planned retention period. Data stored in the cloud can be different based on how it's generated, processed, and accessed over its lifetime. Some data is actively accessed and modified throughout its lifetime. Some data is accessed frequently early in its lifetime, with access dropping drastically as the data ages. Some data remains idle in the cloud and is rarely, if ever, accessed after it's stored. To accommodate these different access needs, Azure provides several access tiers, which you can use to balance your storage costs with your access needs.

- Hot access tier: Optimized for storing data that is accessed frequently (for example, images for your website).
- Cool access tier: Optimized for data that is infrequently accessed and stored for at least 30 days (for example, invoices for your customers).
- Archive access tier: Appropriate for data that is rarely accessed and stored for at least 180 days, with flexible latency requirements (for example, long-term backups).

The following considerations apply to the different access tiers:

- Only the hot and cool access tiers can be set at the account level. The archive access tier isn't available at the account level.
- Hot, cool, and archive tiers can be set at the blob level, during upload or after upload.
- Data in the cool access tier can tolerate slightly lower availability, but still requires high durability, retrieval latency, and throughput characteristics similar to hot data. For cool data, a slightly lower availability service-level agreement (SLA) and higher access costs compared to hot data are acceptable trade-offs for lower storage costs.
- Archive storage stores data offline and offers the lowest storage costs, but also the highest costs to rehydrate and access data.

---

# [Explore Azure database and analytics services](https://docs.microsoft.com/en-us/learn/modules/azure-database-fundamentals/?WT.mc_id=cloudskillschallenge_495571f3-ba53-426a-b5cc-2885cf229e8b)

## Azure Cosmos DB

Is a globally distributed, multi-model database service. You can elastically and independently scale throughput and storage across any number of Azure regions worldwide.Azure Casmos DB provides comprehensive service level agreements for troughput, latency, availability, and consisitency guarantees.

Azure Cosmos DB is flexible. At the lowest level, it stores data in atom-record-sequenct(ARS) format. The data is then abstracted and projected as an API, which you specify when you're creating your database (SQL, MongoDB, Cassandra, Tables, and Gremlin).


## Azure SQL Database
Is a relational database based on the latest stable version of the Microsoft SQL Server database engine. You can use it to build data-driven applications and websites in the programming language of your choice, without needing to manage infrastructure.

Azure SQL Database is as platform as a service (PaaS) database engine. It handles most of the databose management functions, such as upgrading, patching, backups, and monitoring, without user involment. Provides 99.99 percent availability. It enables you to process both relational data and non-relational structuros, such as graphs, JSON, spatial, and XML.

## Azure Database for MySQL
Is a relational database service in the cloud, and it's based on the MySQL Community Edition database engine, versions 5.6,5.7, and 8.0. Provides 99.99 percent availability service level agreement from Azure.

Delivers:
- Built-in high availability with no additional cost.
- Predictable performance and inclusive, pay-as-you-go pricing.
- Scale as needed, within seconds.
- Ability to protect sensitive data at-rest and in-motion.
- Automatic backups.
- Enterprise-grade security and compliance.

## Azure Database for PostgreSQL
The server software is based on the community version of the opens-source PostgreSQL database engine.It delivers the following benefits:
- Built-in high availability, There's no additional configuration, replication, or cost required to make sure your applications are always available.
- Simple and flexible pricing, You have predictable performance based on a selected pricing tier choice that includes software patching, automatic backups, monitoring, and securityp
- Scale pu or dawn as needed, withen seconds.
- Automatic backups
- Enterprise-grade security and compliance.

## Azure SQL Managed Instance
Is a scalable cloud data service thot provides the broadest SQL Server database engine compatibility with all the benefits of a fully managed platform as a service. Depending on your scenario, Azure SQL Managed Instance migth offer more options for your database needs.
- [Features comparasion: SQL Database and SQL Managed Instance](https://docs.microsoft.com/en-us/azure/azure-sql/database/features-comparison/)

## Big data and analytics

Open-source cluster technologies have been developed, over time, to try to deal with these large datasets. Microsoft Azure supports a broad range of technologies and services to provide big data and analytic solutions, including Azure Synapse Analytics, Azure HDInsight, Azure Databricks, and Azure Data Lake Analytics.

### Azure Synapse Analytics
Is a limitless analytics service that brings together enterprise data warehousing and big data analytics.

### Asuve HDInsight
Is a fully managed, open-source analytycs service for enterprises.It makes it easier, faster, and more cost-effective to process massive amounts of data.

### Azure Databricks
Helps you unlock insights from all your data and build artificial intelligence solutions.

### Azure Data Lake Analytics
Is an on-demand analytics job service that simplifies bigdata. Instead of deploying, configuring, and tuning hardware, you write queries to transform your data and extract valuable insights.


---

# [Choose the best Azure IoT service for your application](https://docs.microsoft.com/en-us/learn/modules/iot-fundamentals/?WT.mc_id=cloudskillschallenge_495571f3-ba53-426a-b5cc-2885cf229e8b)

## Identify the product options
Iot enables devices to gather and then relay information for data analysis. Smart devices are equipped with sensors that collect data.

By using Azure IoT services, devices that are equippe with these kinds of sensors and that can connect to the internet could send their sensor readings to a specific end point Azure via message. The message's data is then collected and aggregated, and it co be converted into reports and alerts. Alternately, all devices could be updated with new frimware to fik issues or add new functionality by sending software updates from Azure IoT services to each device.

### Azure IoT Hub
Is a managed service that's hosted in the cloud and that acts as a centrol message hub for bi-directinal communication between your IoT application and the devices it manages. You con use Azure IoT Hub to build IoT solutions with reliable and secure communicotions between millions of IoT devices and a cloud-hosted solution back end. You can conect virtually any device to your IoT hub.


### Azure IoT central 
Builds on top of IoT Hub by adding a dasboard that allows you to connect, monitor, and manage your IoT devices. The visual user interface (UI) makes it easy to quickly connect new devices and watch as they begin sending telemetry or error messages. You can watch the overall performance across all devices in aggregate, and you can set up alerts that send notifications when a specific device needs maintenance. Finally, you can push firmware updates to the device.


### Azure Sphere 
Creates an end-to-end, highly secure IoT solution for customers that encompasses everything from the hardware and operating system on the device to the secure mothon of sendig messages from the device to the message hub. Azure Sphere has built-in communications and security features for internet-connected devices.

---

# [Choose tho best AI service for your needs](https://docs.microsoft.com/en-us/learn/modules/ai-machine-learning-fundamentals/?WT.mc_id=cloudskillschallenge_495571f3-ba53-426a-b5cc-2885cf229e8b)

Artifical Intelligence (AI) is a category of computing that adapts and improves its decision-making ability over time based on its successes and failures. Microsoft Azure provides several AI solutions to choose from, each one depending on the problem you're trying to solve.

## Identify the product options
AI is a broad classification of computing that allows a software system to perceive its environment and take action that maximizes its chance of succesfully achieving its goal. A goal of AI is to create a software system that's able to adapt, or learn something on its own without being explicity programmed to do it.

There are two basic approaches to AI. The first is to employ a deep learning system that's modeled on the neural network of the human mind, enabling it to discover, learn, and grow through experience.

The second approach is machine learning, a data science technique that uses existing data to train a model, test it, and then apply the model to new data to forecast future behaviors, outcomes, and trends.

Forecasts or predictions from machine learning can make apps and devices smarter

### Azure Machine Learning
Is a platform for making predictions. It consists of tools and services that allow you to connect to data to train and test models to find one that will most accurately predict a future result. After you've run experiments to test the model, you can deploy and use it in real time via a web API endpoint.

### Azure Cognitive Services
Provides prebuilt machine learning models that enable applications to see, hear, speak, understand, and even begin to reason. Use Azure Cognitive Services to solve general problems, such as analyzing text for emotional sentiment or analyzing images to recognize objects or faces. You don't need special machine learning or data science knowledge to use these service. Developers access Azure Cognitive Services via APIs and can easily include these features in just a few lines of code.

### Azure Bot service
Azure Bot Service and Bot Framework are platforms for creating visual agents that understand and reply to questions just like a human. Azure Bot Service is a bit different from Azure Machine Learning and Azure Cognitive Services in that it has a specific use case. Namely, it creates a virtual agent that can intelligently communicate with humans. Behind the scenes, the bot you build uses other Azure services, such as Azure Cognitive Services, to understand what their human counterports are asking for.

Bots can be used to shift simple, repetitive tasks, such as taking a dinner reservation or gathering profile information, on to automated systems that might no longer require direct human intervention. Users converse with a bot by using text, interactive cards, and speech. A bot interaction can be a quick question and answer, or it can be a sophisticated conversation that intelligently provides access to services.

---

# Choose the best Azure serverless technology for your business scenario

Serverless computing is a term used to describe an execution evironment that's set up and managed for you. You merely specify what you want to happen by writing code or connecting and configuring components in a visual editor, and then specify the actions that trigger your functionality, such as a timer or an HTTP request. Best of all, you never have to worry about on outage, your code can scale instantly to meet demand, and you pay based only on the actual usage of your code.

## Identify the product options

Serverless computing is a cloud-hosted execution evnviroment that runs your code but abstracts the underlying hosting environment. The key idea is that you're not responsible for setting up or maintaining the server. You don't have to worry about scaling it when there's increased demand, and you don't have to worry about outages. The cloud vendor takes care of all maintenonce and scaling concerns for you.

You create an instance of the service, and you then add your code. No infrastructure configuration or maintenance is required, or even allowed. You configure your serverless apps to respond to events. An event could be a REST endpoint, a periodic timer, or even a message received from another Azure service. The serverless app runs only when it's triggered by an event. Scaling and performance are handled automatically, and you're billed only for the resources you use. You don't even need to reserve resources.

### Azure Functions
With this service, you can host a single method or function by using a popular programming language in the cloud that runs in response to an event.An example of an event might be an HTTP request, a new message on a queue, or a message on a timer.

An Azure function is a stateless enviroment, A function behaves as if it's restarted every time it responds to an event. This feature is ideal for processing incoming data. And if state is required, the function can be connected to an Azure storage account.

Azure Fnctions con perform orchestration tasks by using an extension called Durable Functions, which allow developers to chain functions together while maintaining state.

The Azure Functions solution is ideal when you're concerned only with the code that's running your service and not the underlying platform or infrastructure.

- Better for execute custom algorithms or perform specialized data parsing and data lookups
- Better if you have existing automated tasks written in an imperative programming language


### Azure Logic Apps
Is a low-code/no-code development platform hosted as a cloud service. The service helps you automate and orchestrate tasks, business processes, and workflows when you need to integrate apps, data, systems and services across enterprises or organizations. Logic Apps simplifies how you design and build scalable solutions, whether in the cloud, on-premises or both. THis solution covers app integratin, data integration, system integration, enterpriso application integration (EAI) and business-to-business (B2B) integration.

Azure Logic Apps is designod in a web-based designer and can execute logic that's triggered by Azure services without writing any code. You build an app by linking triggers to actions with connectors, A trigger is an event (such as a timer) that causes on app to execute, thon an new message to be sent to a queue, ar an HTTP request. An action is a task or step that can execute. There are logic actions such as those you would find in most programming languages. Examplos of actions include working with variables , decisions statements and loops, and tasks that parse and modify data.

- Better for orchestation across well-known APIs
- Better if you prefer a visual (declarative) workflow or writing (imperative)  

--- 
# Choose the best tools to help organizations build better solutions
Modern software development practices are supported by tools that encompass virtualy every aspect of the software development life cycle. Microsoft has created a comprehensive set of tools that help organizations implement DevOps practices, develop solutions, and save money doing so.

## Prouct options

Devops is a concept that combines philosophies and practices to facilitate technical teams as they work toward common goals. To accomplish this alignment, organizations employ practices and processes that automated the ongoing development, maintenance, and deployment of software systems. The aim is to expedite the release of software chonges, ensure the ongoing deployability af the system, and ensure that all changes meet a high quality bar.

When done correctly, DevOps practices and processes touch nearly every aspect of a company and the software development lifecycle, including planning, project management, and the collaboration of software developers and operations and quality assurance teams. Tooling automates and enforces most of the practices and processes, making it both difficult and unnecessary to work around.

### Azure DevOps Services

Is a suite of services that address every stage of the software development lifecycle.

- **Azure Repos** is a centralized source-code repository.
- **Azure Boards** is an agile project management suite that includes Kanban boards, reporting, and tracking ideas and work from high-level epics to work items and issues.
- **Azure Pipelines** is a CI/CD (continuous integration / continuous deployment) automation tool.
- **Azure Artifacts** is a repository for hosting artifacts, such as compiled source code, which can be fed into testing or deployment pipelines steps.
- **Azure Test Plans** is an automated test tool that can be used in a CI/CD pipeline to ensure quality before a software release.

### GitHub and GitHub actions

Most relevant for this module, GitHub Actions enables workflow automation with triggers for many lifecycle events. One such example would be automating a CI/CD *toolchain*.

A *toolchain* is a combination of software tools that aid in the delivery, development, and management of software applications throughout a system's development lifecycle. The output of one tool in the toolchain is the input of the next tool in the toolchain. Typical tool functions range from performing automated dependency updates to building and configuring the software, delivering the build artifacts to various locations, testing, and so on.

With such similarity between many GitHub and Azure DevOps features, you might wonder which product to choose for your organization. Unfortunately, the answer might not be straightforward.

Although both Azure DevOps and GitHub allow public and private code repositories, GitHub has a long history with public repositories and is trusted by tens of thousands of open-source project owners. GitHub is a lighter-weight tool than Azure DevOps, with a focus on individual developers contributing to the open-source code. Azure DevOps, on the other hand, is more focused on enterprise development, with heavier project-management and planning tools, and finer-grained access control.

### Azure DevTest Labs 

Provides an automated means of managing the process of building, setting up, and tearing down virtual machines (VMs) that contain builds of your software projects. This way, developers and testers can perform tests across a variety of environments and builds. And this capability isn't limited to VMs. Anything you can deploy in Azure via an ARM template can be provisioned through DevTest Labs.


