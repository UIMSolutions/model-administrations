module models.administrations.entities.servers.cluster_configuration;

@safe:
import models.administrations;

// 
class DADMServerClusterConfiguration : DOOPEntity {
  this() { super();
    this.attributes([
      "backingTable_SysClusterConfigRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMServerClusterConfiguration"; }
  override string entityClasses() { return "aDMServerClusterConfigurations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMServerClusterConfiguration() { return new DADMServerClusterConfiguration; } 
auto ADMServerClusterConfiguration(Json json) { return new DADMServerClusterConfiguration(json); } 

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