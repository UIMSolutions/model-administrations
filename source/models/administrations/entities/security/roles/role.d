module models.administrations.entities.security.roles.role;

@safe:
import models.administrations;

// 
class DADMSecurityRole : DOOPEntity {
  this() { super();
    this.attributes([
      "securityRoleIdentifier": OOPAttributeString.descriptions(["en":""]),
      "securityRoleName": OOPAttributeString.descriptions(["en":""]),
      "accessToSensitiveData": OOPAttributeString.descriptions(["en":""]),
      "userLicenseType": OOPAttributeString.descriptions(["en":""]),
      "contextString": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMSecurityRole"; }
  override string entityClasses() { return "aDMSecurityRoles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMSecurityRole() { return new DADMSecurityRole; } 
auto ADMSecurityRole(Json json) { return new DADMSecurityRole(json); } 

unittest {
  version(uim_entities) {
    assert(ADMSecurityRole);
  
  auto entity = ADMSecurityRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}