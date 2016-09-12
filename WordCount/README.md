# VSTS-AzureServiceFabric




##[**WordCount**](https://github.com/Azure-Samples/service-fabric-dotnet-getting-started/tree/master/Services/WordCount) sample app. 

> **Note:** *original source code from [Azure-Samples/service-fabric-dotnet-getting-started](https://github.com/Azure-Samples/service-fabric-dotnet-getting-started) repo*
> 
> @seanmckmsft Thank you!!! 
> 

**WordCount - app brief description**

WordCount provides an introduction to using reliable collections and to partitioning stateful services. A client-side JavaScript function generates random five-character strings, which are then sent to the application via an ASP.NET WebAPI to be counted. The stateless web service resolves the endpoint for the stateful service's partition based on the first character of the string. The stateful service maintains a backlog of words to count in a ReliableQueue and then keeps track of their count in a ReliableDictionary. The total count, plus a per-partition count, are shown in the web UI at http://<clusteraddress>:8081/WordCount/.
> **Note:** This app can be deployed to local or Azure Service Fabric cluster
> 
>   #TalkDevOps & @Alex_ZZ_
 

