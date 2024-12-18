param location string = resourceGroup().location

resource LogicApp 'Microsoft.Logic/workflows@2019-05-01' = {
  name: 'Customer01-Int01-Publish-LA-Sandbox'
  location: location
  properties: {
    definition: {
      $schema: 'https://schema.management.azure.com/schemas/2016-06-01/Microsoft.Logic.json' // schema URL
      contentVersion: '1.0.0.0'
      actions: {
        HttpAction: {
          type: 'Http'
          inputs: {
            method: 'GET'
            uri: 'https://example.com'
          }
        }
      }
      triggers: {
        RecurrenceTrigger: {
          type: 'Recurrence'
          recurrence: {
            frequency: 'Day'
            interval: 1
          }
        }
      }
    }
  }
}
