module models.administrations.entities.users.groups.group;

@safe:
import models.administrations;

// 
class DADMGroup : DOOPEntity {
  mixin(OOPEntityThis!("ADMGroup"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "userId": OOPAttributeUUID.descriptions(["en":""]),
        "objectId": OOPAttributeUUID.descriptions(["en":""]),
        "enabled": OOPAttributeString.descriptions(["en":""]),
        "company": OOPAttributeString.descriptions(["en":""]),
        "language": OOPAttributeString.descriptions(["en":""]),
        "preferredTimeZone": OOPAttributeString.descriptions(["en":""]),
        "preferredCalendar": OOPAttributeString.descriptions(["en":""]),
      ])
      .registerPath("admin_groups");
  }
}
mixin(OOPEntityCalls!("ADMGroup"));

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