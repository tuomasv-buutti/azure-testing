Azure testing project. No useful functionality, just for learning Azure.

# How to create the Azure resources

Create resource group manually first in Azure (name: azure-testing-resource-group)

## Install bicep:
az bicep install

## Login to Azure
az login

## Deploy Bicep file:
az deployment group create --resource-group azure-testing-resource-group --template-file main.bicep

You can add --debug if there's a problem: az deployment group create --resource-group azure-testing-resource-group --template-file main.bicep --debug --name azure-testing-deployment