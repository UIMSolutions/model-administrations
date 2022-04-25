module models.administrations.entities.security.roles.subrole;

@safe:
import models.administrations;

// 
class DADMUserGroup : DOOPEntity {
  mixin(EntityThis!("ADMUserGroup"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "backingTable_UserGroupInfoRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_usergroups");
  }
}
mixin(EntityCalls!("ADMUserGroup"));

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