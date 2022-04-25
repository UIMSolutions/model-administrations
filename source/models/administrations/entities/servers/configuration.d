module models.administrations.entities.servers.configuration;

@safe:
import models.administrations;

// 
class DADMServerConfiguration : DOOPEntity {
  mixin(EntityThis!("ADMServerConfiguration"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "aosInstanceName": OOPAttributeString.descriptions(["en":""]),
        "azureDeploymentId": OOPAttributeUUID.descriptions(["en":""]),
        "referenceToAClusterName": OOPAttributeString.descriptions(["en":""]),
        "isBatchServer": OOPAttributeString.descriptions(["en":""]),
        "isRoleIdle": OOPAttributeString.descriptions(["en":""]),
        "loadBalancer": OOPAttributeString.descriptions(["en":""]),
        "maxConcurrentSessions": OOPAttributeString.descriptions(["en":""]),
        "serverGUID": OOPAttributeString.descriptions(["en":""]),
        "timeAlive": OOPAttributeString.descriptions(["en":""]),
        "clusterName": OOPAttributeString.descriptions(["en":""]),
        "backingTable_SysServerConfigRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_serverconfigurations");
  }
}
mixin(EntityCalls!("ADMServerConfiguration"));

unittest {
  version(uim_entities) {
    assert(ADMServerConfiguration);
  
  auto entity = ADMServerConfiguration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}