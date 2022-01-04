module models.administrations.entities.security.roles.duty;

@safe:
import models.administrations;

// 
class DADMSecurityRoleDuty : DOOPEntity {
  this() { super();
    this.attributes([
      "securityRoleId": OOPAttributeString.descriptions(["en":""]),
      "securityRoleName": OOPAttributeString.descriptions(["en":""]),
      "securityDutyId": OOPAttributeString.descriptions(["en":""]),
      "securityDutyName": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  override string entityClass() { return "aDMSecurityRoleDuty"; }
  override string entityClasses() { return "aDMSecurityRoleDuties"; }
}
auto ADMSecurityRoleDuty() { return new DADMSecurityRoleDuty; } 
auto ADMSecurityRoleDuty(Json json) { return new DADMSecurityRoleDuty(json); } 

unittest {
  version(uim_entities) {
    assert(ADMSecurityRoleDuty);
  
  auto entity = ADMSecurityRoleDuty;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}