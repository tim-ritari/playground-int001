param logicAppName string = 'Customer01-Int001-LA-Pub-Sandbox'

resource workflows_Customer01_Int001_LA_Pub_Sandbox_name_resource 'Microsoft.Logic/workflows@2017-07-01' = {
  name: logicAppName
  location: 'swedencentral'
  properties: {
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      parameters: {
        '$connections': {
          defaultValue: {}
          type: 'Object'
        }
      }
      triggers: {
        When_a_HTTP_request_is_received: {
          type: 'Request'
          kind: 'Http'
        }
      }
      actions: {
        Response: {
          runAfter: {}
          type: 'Response'
          kind: 'Http'
          inputs: {
            statusCode: 200
            body: 'Your payload is received'
          }
        }
      }
      outputs: {}
    }
    parameters: {
      '$connections': {
        value: {}
      }
    }
  }
}
