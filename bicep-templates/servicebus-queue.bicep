resource namespaces_Common_ServiceBus_Sandbox_name_customer01_orders_queue 'Microsoft.ServiceBus/namespaces/queues@2023-01-01-preview' = {
  parent: Common-ServiceBus-Sandbox
  name: 'customer01-orders-queue'
  location: 'swedencentral'
  properties: {
    maxMessageSizeInKilobytes: 256
    lockDuration: 'PT1M'
    maxSizeInMegabytes: 1024
    requiresDuplicateDetection: false
    requiresSession: false
    defaultMessageTimeToLive: 'P14D'
    deadLetteringOnMessageExpiration: false
    enableBatchedOperations: true
    duplicateDetectionHistoryTimeWindow: 'PT10M'
    maxDeliveryCount: 10
    status: 'Active'
    autoDeleteOnIdle: 'P10675199DT2H48M5.4775807S'
    enablePartitioning: false
    enableExpress: false
  }
}
