# VSTS-AzureServiceFabric


## Microservices & DevOps practices with VSTS + Azure Service Fabric 


Create Secured Azure Service Fabric cluster and enable CI/CD/RM DevOps practices using Visual Studio Team Services and advanced upgrade of application microservices.

![Screencapture GIF](/images/vsts-asf-movie.gif)


This example walks through the workflow of a fully automated deployment/update of microservices application [WordCount](https://github.com/Azure-Samples/service-fabric-dotnet-getting-started/tree/master/Services/WordCount) to Secure [Azure Service Fabric](https://azure.microsoft.com/en-us/services/service-fabric/) with Visual Studio Team Services.

**Pre-requisites:**

- Visual Studio Team Services account
- Azure Subscription
- Example application - e.g.[WordCount](https://github.com/Azure-Samples/service-fabric-dotnet-getting-started/tree/master/Services/WordCount) 


###**Key milestones/High-level steps**

1. [**Creating secure Azure Service Fabric Cluster**](https://github.com/djzeka/VSTS-AzureServiceFabric/blob/master/docs/Creating%20secure%20Azure%20Service%20Fabric%20Cluster.md)
	- Create Self-Signed Certificate using PowerShell 
	- Create Azure Key Vault & Import certificate to Azure Key Vault
	- Create new secure Azure Service Fabric (ARM template or Azure portal)
2. [**Connecting VSTS & Azure Service Fabric**](https://github.com/djzeka/VSTS-AzureServiceFabric/blob/master/docs/Connecting%20VSTS%20%26%20Azure%20Service%20Fabric.md)
	- Create new project at Visual Studio Team Services & import source code/example app 
	- Create a Service Link from Visual Studio Team Services to an Azure Service Fabric
3. [**Application Delivery & DevOps practices with Azure Service Fabric**](https://github.com/djzeka/VSTS-AzureServiceFabric/blob/master/docs/Application%20Delivery%20%26%20DevOps%20practices%20with%20Azure%20Service%20Fabric.md)
	- Create Continuous Integration definition with Visual Studio Team Service
	- Create new Release definition with Visual Studio Team Service
	- Deploy/update the app & enjoy DevOps with Azure Service Fabric


> **Note:** #TalkDevOps & @Alex_ZZ_

> **Note:** *most of the things are done, but :) Work in progress - Still developing doc's and content. "watch" star the repo and get info/updates*
 

