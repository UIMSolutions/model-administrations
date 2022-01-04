module models.administrations.entities.security.roles.subrole;

@safe:
import models.administrations;

// 
class DADMUserGroup : DOOPEntity {
  this() { super();
    this.attributes([
      "backingTable_UserGroupInfoRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMUserGroup"; }
  override string entityClasses() { return "aDMUserGroups"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMUserGroup() { return new DADMUserGroup; } 
auto ADMUserGroup(Json json) { return new DADMUserGroup(json); } 

unittest {
  version(uim_entities) {
    assert(ADMUserGroup);
  
  auto entity = ADMUserGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}