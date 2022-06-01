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
      .registerPath("administration_serverclusterconfigurations");
  }
}
mixin(EntityCalls!("ADMServerClusterConfiguration"));

version(test_model_administrations) {
  unittest {
    assert(ADMServerClusterConfiguration);
  
    auto entity = ADMServerClusterConfiguration;
  }
}
