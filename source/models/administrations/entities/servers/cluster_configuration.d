module models.administrations.entities.servers.cluster_configuration;

@safe:
import models.administrations;

// 
class DADMServerClusterConfiguration : DOOPEntity {
  mixin(OOPEntityThis!("ADMServerClusterConfiguration"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "backingTable_SysClusterConfigRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_serverclusterconfigurations");
  }
}
mixin(OOPEntityCalls!("ADMServerClusterConfiguration"));

unittest {
  version(uim_entities) {
    assert(ADMServerClusterConfiguration);
  
  auto entity = ADMServerClusterConfiguration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}