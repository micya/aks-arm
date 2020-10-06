#!/bin/bash

# login to az cli
az login --identity

# get kubernetes credentials
az aks get-credentials --name $CLUSTERNAME --resource-group $CLUSTERGROUP

# add helm repo
helm repo add webapp https://raw.githubusercontent.com/micya/webapp/master/charts

# update helm repos
helm repo update

# install windows helm chart
helm install webapp webapp/webapp-windows