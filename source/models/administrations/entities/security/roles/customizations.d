module models.administrations.entities.security.roles.customization;

@safe:
import models.administrations;

// 
class DADMSecurityRoleCustomization : DOOPEntity {
  this() { super();
    this.attributes([
      "identifier": OOPAttributeString.descriptions(["en":""]),
      "xmlObject": OOPAttributeString.descriptions(["en":""]),
      "isDisabled": OOPAttributeBoolean.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMSecurityRoleCustomization"; }
  override string entityClasses() { return "aDMSecurityRoleCustomizations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMSecurityRoleCustomization() { return new DADMSecurityRoleCustomization; } 
auto ADMSecurityRoleCustomization(Json json) { return new DADMSecurityRoleCustomization(json); } 

unittest {
  version(uim_entities) {
    assert(ADMSecurityRoleCustomization);
  
  auto entity = ADMSecurityRoleCustomization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}