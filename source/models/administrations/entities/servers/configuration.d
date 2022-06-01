module models.administrations.entities.servers.configuration;

@safe:
import models.administrations;

// 
class DADMServerConfiguration : DOOPEntity {
  mixin(EntityThis!("ADMServerConfiguration"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "aosInstanceName": StringAttribute, // 
        "azureDeploymentId": UUIDAttribute, // 
        "referenceToAClusterName": StringAttribute, // 
        "isBatchServer": StringAttribute, // 
        "isRoleIdle": StringAttribute, // 
        "loadBalancer": StringAttribute, // 
        "maxConcurrentSessions": StringAttribute, // 
        "serverGUID": StringAttribute, // 
        "timeAlive": StringAttribute, // 
        "clusterName": StringAttribute, // 
        "backingTable_SysServerConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_serverconfigurations");
  }
}
mixin(EntityCalls!("ADMServerConfiguration"));

version(test_model_administrations) {
  unittest {
    assert(ADMServerConfiguration);
  
  auto entity = ADMServerConfiguration;
  }
}
