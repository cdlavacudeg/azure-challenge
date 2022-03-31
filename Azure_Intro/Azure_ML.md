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
|Describe identity, governance, privacy, and compliance features|20-25%|
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

- Build, manage, and monitor everything from simple web apps to complex cloud deployments.
- Create custom dashboards for an organized view of resources.
- Configure accessibility options for an optimal experience.

## What is Azure Marketplace?
It helps connect users with Microsoft partners, independent software vendors, and startups that are offering their solutions and services, which are optimized to run on Azure. 

Azure Marketplace customers can find, try, purchase, and provision applications and services from hundreds of leading service providers. All solutions and services are certified to run on Azure.

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

### What are public, private, and hybrid clouds

|Deployment model |Description|
|--------|------|
|Public cloud|Services are offered over the public internet and available to anyone who wants to purchase them. Cloud resources, such as servers and storage, are owned and operated by a third-party cloud service provider, and delivered over the internet.|
|Private cloud|A private cloud consists of computing resources used exclusively by users from one business or organization. A private cloud can be physically located at your organization's on-site (on-premises) datacenter, or it can be hosted by a third-party service provider.|
|Hybrid cloud |A hybrid cloud is a computing environment that combines a public cloud and a private cloud by allowing data and applications to be shared between them.|

### Cloud model comparison
|Public cloud|Private cloud|Hybrid cloud|
|----------|---------|------|
|- No capital expenditures to scale up.<br>- Applications can be quickly provisioned and deprovisioned.<br>- Organizations pay only for what they use.|- Hardware must be purchased for start-up and maintenance.<br>-Organizations have complete control over resources and security.<br>-Organizations are responsible for hardware maintenance and updates.|-Provides the most flexibility.<br>-Organizations determine where to run their applications.<br>-Organizations control security, compliance, or legal requirements.

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

Virtual machines are software emulations of physical computers. They include a virtual processor, memory, storage, and networking resources. VMs host an operating system, and you can install and run software just like a physical computer. When using a remote desktop client, you can use and control the VM as if you were sitting in front of it.

VMs are an ideal choice when you need:
- Total control over the operating system (OS).
- The ability to run custom software
- To use custom hosting configurations


### Virtual machine scale sets

They are an Azure compute resource that you can use to deploy and manage a set of identical VMs. With all VMs configured the same, virtual machine scale sets are designed to support true autoscale.

For this reason, it's easier to build large-scale services targeting big compute, big data, and containerized workloads. As demand goes up, more VM instances can be added. As demand goes down, VM instances can be removed. The process can be manual, automated, or a combination of both.

### Azure Batch
Enables large-scale parallel and high-performance computing(HPC) batch jobs with the ability to scale to tens, hundreds, or thousands of VMs.

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

The task of automating, managing, and interacting with a large number of containers is known as orchestration. Azure Kubernetes Service is a complete orchestration service for containers with distributed architectures and large volumes of containers.



### App Service
It allows you to quickly build, deploy, and scale enterprise-grade web, mobile, and API apps running on any platform. You can meet rigorous performance, scalability, security, and compliance requirements while using a fully managed platform to perform infraestructure maintenance. App Service is a platfor as a service offering

App Service enables you to build and host web apps, background jobs, mobile back-ends, and RESTful APIs in the programming language of your choice without managing infrastructure.  offers automatic scaling and high availability. App Service supports Windows and Linux and enables automated deployments from GitHub, Azure DevOps, or any Git repo to support a continuous deployment model.

## Functions 
They're ideal when you're concerned only about the code running your service and not the underlying platform or infrastructure. They're commonly used when you need to perform work in response to an event (often via REST request), timer, or message from another Azure service.

Functions scale automatically based on demand, so they're a solid choice when demand is variable.

Using a virtual machine-based approach, you'd incur costs even when the virtual machine is idle. With functions, Azure runs your code when it's triggered and automatically deallocates resources when the function is finished. In this model, you're only charged for the CPU time used while your function runs.

Functions can be either stateless or stateful. When they're stateless (the default), they behave as if they're restarted every time they respond to an event. When they're stateful (called Durable Functions), a context is passed through the function to track prior activity.

Functions are a key component of serverless computing. They're also a general compute platform for running any type of code. If the needs of the developer's app change, you can deploy the project in an environment that isn't serverless. This flexibility allows you to manage scaling, run on virtual networks, and even completely isolate the functions.

## Logic apps

Logic apps are similar to functions. Both enable you to trigger logic based on an event. Where functions execute code, logic apps execute workflows that are designed to automate business scenarios and are built from predefined logic blocks.

Every Azure logic app workflow starts with a trigger, which fires when a specific event happens or when newly available data meets specific criteria. Many triggers include basic scheduling capabilities, so developers can specify how regularly their workloads will run. Each time the trigger fires, the Logic Apps engine creates a logic app instance that runs the actions in the workflow. These actions can also include data conversions and flow controls, such as conditional statements, switch statements, loops, and branching.

You create logic app workflows by using a visual designer on the Azure portal or in Visual Studio. The workflows are persisted as a JSON file with a known workflow schema.

## Azure Virtual Desktop

Azure Virtual Desktop is a desktop and application virtualization service that runs on the cloud. It enables your users to use a cloud-hosted version of Windows from any location. Azure Virtual Desktop works across devices like Windows, Mac, iOS, Android, and Linux. It works with apps that you can use to access remote desktops and apps. You can also use most modern browsers to access Azure Virtual Desktop-hosted experiences.

Users have the freedom to connect to Azure Virtual Desktop with any device over the internet. They use a Azure Virtual Desktop client to connect to their published Windows desktop and applications. This client could either be a native application on the device or the Azure Virtual Desktop HTML5 web client.

You can make sure your session host virtual machines (VMs) run near apps and services that connect to your datacenter or the cloud. This way your users stay productive and don't encounter long load times.

User sign-in to Azure Virtual Desktop is fast because user profiles are containerized by using FSLogix. At sign-in, the user profile container is dynamically attached to the computing environment. The user profile is immediately available and appears in the system exactly like a native user profile.

You can provide individual ownership through personal (persistent) desktops. For example, you might want to provide personal remote desktops for members of an engineering team. Then they can add or remove programs without impacting other users on that remote desktop.