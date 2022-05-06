module models.administrations.entities.servers.cluster_configuration;

@safe:
import models.administrations;

// 
class DADMServerClusterConfiguration : DOOPEntity {
  mixin(EntityThis!("ADMServerClusterConfiguration"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "backingTable_SysClusterConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("admin_serverclusterconfigurations");
  }
}
mixin(EntityCalls!("ADMServerClusterConfiguration"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMServerClusterConfiguration);
  
  auto entity = ADMServerClusterConfiguration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}