module models.administrations.entities.security.roles.users.user;

@safe:
import models.administrations;

// 
class DADMSecurityUserRole : DOOPEntity {
  this() { super();
    this.attributes([
      "AssignmentMode": OOPAttributeString.descriptions(["en":""]),
      "AssignmentStatus": OOPAttributeString.descriptions(["en":""]),
      "SecurityRole": OOPAttributeString.descriptions(["en":""]),
      "UserId": OOPAttributeString.descriptions(["en":""]),
      "SecurityRoleIdentifier": OOPAttributeString.descriptions(["en":""]),
      "SecurityRoleName": OOPAttributeString.descriptions(["en":""]),
      "UserLicenseType": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMSecurityUserRole"; }
  override string entityClasses() { return "aDMSecurityUserRoles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMSecurityUserRole() { return new DADMSecurityUserRole; } 
auto ADMSecurityUserRole(Json json) { return new DADMSecurityUserRole(json); } 

unittest {
  version(uim_entities) {
    assert(ADMSecurityUserRole);
  
  auto entity = ADMSecurityUserRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}