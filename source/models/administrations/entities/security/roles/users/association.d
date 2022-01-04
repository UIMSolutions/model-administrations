module models.administrations.entities.security.roles.users.association;

@safe:
import models.administrations;

// 
class DADMSecurityUserRoleAssociation : DOOPEntity {
  this() { super();
    this.attributes([
      "AssignmentMode": OOPAttributeString.descriptions(["en":""]),
      "AssignmentStatus": OOPAttributeString.descriptions(["en":""]),
      "SecurityRole": OOPAttributeString.descriptions(["en":""]),
      "UserId": OOPAttributeString.descriptions(["en":""]),
      "SecurityRoleId": OOPAttributeString.descriptions(["en":""]),
      "SecurityRoleName": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMSecurityUserRoleAssociation"; }
  override string entityClasses() { return "aDMSecurityUserRoleAssociations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMSecurityUserRoleAssociation() { return new DADMSecurityUserRoleAssociation; } 
auto ADMSecurityUserRoleAssociation(Json json) { return new DADMSecurityUserRoleAssociation(json); } 

unittest {
  version(uim_entities) {
    assert(ADMSecurityUserRoleAssociation);
  
  auto entity = ADMSecurityUserRoleAssociation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}