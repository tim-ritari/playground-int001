param resourceGroupName string
param location string

resource LogicApp 'Microsoft.Logic/workflows@2019-05-01' = {
  name: 'Customer01-Int01-Publish-LA-Sandbox'
  location: location
  properties: {
    definition: {
      '': 'https://schema.management.azure.com/schemas/2016-06-01/Microsoft.Logic.json'
      contentVersion: '1.0.0.0'
    }
  }
}
