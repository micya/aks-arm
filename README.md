Deploy an AKS cluster running an [empty ASP.NET MVC web app](https://github.com/micya/webapp) via an ARM template. This ARM template deploys a Windows container, which requires advanced AKS networking.

This ARM template does the following:

1. Provision a virtual network
2. Provision the AKS cluster
3. Give cluster Network Contributor role to vnet
4. Deploy ACI that runs a script to install the helm chart

Note the container image is assumed to be public.

Initiate the deployment by running the following:

```bash
# create resource group
az group create -n aks-arm -l eastus
# initiate deployment
az deployment group create -n aks-deploy -g aks-arm -f azuredeploy.json
```