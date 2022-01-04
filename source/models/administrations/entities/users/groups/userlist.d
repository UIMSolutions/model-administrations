module models.administrations.entities.users.groups.userlist;

@safe:
import models.administrations;

// 
class DADMUserGroupUserListEntity : DOOPEntity {
  this() { super();
    this.attributes([
      "groupId": OOPAttributeString.descriptions(["en":""]),
      "userId": OOPAttributeString.descriptions(["en":""]),
      "relationship_SystemUserEntityRelationshipId": OOPAttributeString.descriptions(["en":""]),
      "relationship_SystemUserGroupEntityRelationshipId": OOPAttributeString.descriptions(["en":""]),
      "backingTable_UserGroupListRelationshipId": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMUserGroupUserListEntity"; }
  override string entityClasses() { return "aDMUserGroupUserListEntities"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMUserGroupUserListEntity() { return new DADMUserGroupUserListEntity; } 
auto ADMUserGroupUserListEntity(Json json) { return new DADMUserGroupUserListEntity(json); } 

unittest {
  version(uim_entities) {
    assert(ADMUserGroupUserListEntity);
  
  auto entity = ADMUserGroupUserListEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}