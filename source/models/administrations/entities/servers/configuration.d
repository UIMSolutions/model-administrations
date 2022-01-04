module models.administrations.entities.servers.configuration;

@safe:
import models.administrations;

// 
class DADMServerConfiguration : DOOPEntity {
  this() { super();
    this.attributes([
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
    ]);
  }

  override string entityClass() { return "aDMServerConfiguration"; }
  override string entityClasses() { return "aDMServerConfigurations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMServerConfiguration() { return new DADMServerConfiguration; } 
auto ADMServerConfiguration(Json json) { return new DADMServerConfiguration(json); } 

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