module models.administrations.entities.systems.users.groups.group;

@safe:
import models.administrations;

class DSystemUserGroupEntity : DOOPEntity {
  mixin(EntityThis!("SystemUserGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "groupId": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_UserGroupInfoRelationshipId": StringAttribute, //      
      ])
      .registerPath("administration_systems.users.groups");
  }
}
mixin(EntityCalls!("SystemUserGroupEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemUserEntity);
  
    auto entity = SystemUserEntity;
  }
}