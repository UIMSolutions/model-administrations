module models.administrations.entities.users.groups.userlist;

@safe:
import models.administrations;

// 
class DADMUserGroupUserList : DOOPEntity {
  mixin(EntityThis!("ADMUserGroupUserList"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "groupId": OOPAttributeString.descriptions(["en":""]),
        "userId": OOPAttributeString.descriptions(["en":""]),
        "relationship_SystemUserEntityRelationshipId": OOPAttributeString.descriptions(["en":""]),
        "relationship_SystemUserGroupEntityRelationshipId": OOPAttributeString.descriptions(["en":""]),
        "backingTable_UserGroupListRelationshipId": OOPAttributeString.descriptions(["en":""]),
      ])
      .registerPath("admin_usergroupuserlists");
  }
}
mixin(EntityCalls!("ADMUserGroupUserList"));
unittest {
  version(uim_entities) {
    assert(ADMUserGroupUserList);
  
  auto entity = ADMUserGroupUserList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}