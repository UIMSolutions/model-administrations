module models.administrations.entities.users.groups.group;

@safe:
import models.administrations;

// 
class DADMGroup : DOOPEntity {
  mixin(EntityThis!("ADMGroup"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "userId": UUIDAttribute, // 
        "objectId": UUIDAttribute, // 
        "enabled": StringAttribute, // 
        "company": StringAttribute, // 
        "language": StringAttribute, // 
        "preferredTimeZone": StringAttribute, // 
        "preferredCalendar": StringAttribute, // 
      ])
      .registerPath("administration_groups");
  }
}
mixin(EntityCalls!("ADMGroup"));

version(test_library) {
  unittest {
    assert(ADMGroup);
  
    auto entity = ADMGroup;
  }
}