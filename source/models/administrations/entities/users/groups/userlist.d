module models.administrations.entities.users.groups.userlist;

@safe:
import models.administrations;

// 
class DADMUserGroupUserList : DOOPEntity {
  mixin(EntityThis!("ADMUserGroupUserList"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "groupId": StringAttribute, // 
        "userId": StringAttribute, // 
        "relationship_SystemUserEntityRelationshipId": StringAttribute, // 
        "relationship_SystemUserGroupEntityRelationshipId": StringAttribute, // 
        "backingTable_UserGroupListRelationshipId": StringAttribute, // 
      ])
      .registerPath("admin_usergroupuserlists");
  }
}
mixin(EntityCalls!("ADMUserGroupUserList"));
version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMUserGroupUserList);
  
  auto entity = ADMUserGroupUserList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}