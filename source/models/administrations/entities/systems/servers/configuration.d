module models.administrations.entities.systems.servers.configuration;

@safe:
import models.administrations;

// 
class DSystemServerConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("SystemServerConfigurationEntity"));

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
      .registerPath("administration_systems.serversconfigurations");
  }
}
mixin(EntityCalls!("SystemServerConfigurationEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemServerConfigurationEntity);
  
  auto entity = SystemServerConfigurationEntity;
  }
}
