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
    assert(APLFeedback);
    assert(ADMGroup);
  
  auto entity = ADMGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}