module models.administrations.entities.global_configuration;

@safe:
import models.administrations;

// 
class DADMGlobalConfiguration : DOOPEntity {
  this() { super();
    this.attributes([
      "aosInstanceName": OOPAttributeString.descriptions(["en":""]),
      "settingLevel": OOPAttributeString.descriptions(["en":""]),
      "value": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMGlobalConfiguration"; }
  override string entityClasses() { return "aDMGlobalConfigurations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMGlobalConfiguration() { return new DADMGlobalConfiguration; } 
auto ADMGlobalConfiguration(Json json) { return new DADMGlobalConfiguration(json); } 

unittest {
  version(uim_entities) {
    assert(ADMGlobalConfiguration);
  
  auto entity = ADMGlobalConfiguration;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}