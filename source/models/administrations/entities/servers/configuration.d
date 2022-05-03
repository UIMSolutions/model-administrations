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
        "aosInstanceName": StringAttributeClass, // 
        "azureDeploymentId": UUIDAttributeClass, // 
        "referenceToAClusterName": StringAttributeClass, // 
        "isBatchServer": StringAttributeClass, // 
        "isRoleIdle": StringAttributeClass, // 
        "loadBalancer": StringAttributeClass, // 
        "maxConcurrentSessions": StringAttributeClass, // 
        "serverGUID": StringAttributeClass, // 
        "timeAlive": StringAttributeClass, // 
        "clusterName": StringAttributeClass, // 
        "backingTable_SysServerConfigRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_serverconfigurations");
  }
}
mixin(EntityCalls!("ADMServerConfiguration"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMServerConfiguration);
  
  auto entity = ADMServerConfiguration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}