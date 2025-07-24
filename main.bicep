@description('Name of the Static Web App')
param staticWebAppName string = 'azure-testing-web-app-${uniqueString(resourceGroup().id)}'

@description('Azure region')
param location string = 'westeurope'

@description('GitHub repo URL')
param repositoryUrl string = 'https://github.com/tuomasv-buutti/azure-testing'

@description('Git branch')
param branch string = 'main'

resource staticWebApp 'Microsoft.Web/staticSites@2022-03-01' = {
  name: staticWebAppName
  location: location
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {
    repositoryUrl: repositoryUrl
    branch: branch
    buildProperties: {
      appLocation: '/'
      apiLocation: ''
      outputLocation: '/'
    }
  }
}

output staticWebAppUrl string = staticWebApp.properties.defaultHostname
