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
        "userId": UUIDAttributeClass, // 
        "objectId": UUIDAttributeClass, // 
        "enabled": StringAttributeClass, // 
        "company": StringAttributeClass, // 
        "language": StringAttributeClass, // 
        "preferredTimeZone": StringAttributeClass, // 
        "preferredCalendar": StringAttributeClass, // 
      ])
      .registerPath("admin_groups");
  }
}
mixin(EntityCalls!("ADMGroup"));

unittest {
  version(uim_entities) {
    assert(ADMGroup);
  
  auto entity = ADMGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}