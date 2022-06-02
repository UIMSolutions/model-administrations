module models.administrations.entities.systems.users.groups.userlist;

@safe:
import models.administrations;

class DSystemUserGroupUserListEntity : DOOPEntity {
  mixin(EntityThis!("SystemUserGroupUserListEntity"));

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
      .registerPath("administration_systems.users.groups.userlists");
  }
}
mixin(EntityCalls!("SystemUserGroupUserListEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemUserGroupUserListEntity);
  
    auto entity = SystemUserGroupUserListEntity;
  }
}