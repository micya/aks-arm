#!/bin/bash

# login to az cli using managed identity
az login --identity

# get kubernetes credentials
az aks get-credentials --name $CLUSTERNAME --resource-group $CLUSTERGROUP

# add helm repo
#helm repo add webapp https://raw.githubusercontent.com/micya/webapp/master/charts

# update helm repos
#helm repo update

# install ds2 application 
kubectl apply -f https://eurekak8slatest.blob.core.windows.net/k8s/azure-vote.yaml
