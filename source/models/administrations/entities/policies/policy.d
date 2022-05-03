module models.administrations.entities.policies.policy;

@safe:
import models.administrations;

// 
class DADMPolicy : DOOPEntity {
  mixin(EntityThis!("ADMPolicy"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "IsPolicyActive": StringAttributeClass, // 
        "PolicyName": StringAttributeClass, // 
        "PolicyTypeRecId": UUIDAttributeClass, // 
        "PolicyType": StringAttributeClass, // 
        "BackingTable_SysPolicyRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_policies");
  }
}
mixin(EntityCalls!("ADMPolicy"));

unittest {
  version(uim_entities) {
    assert(ADMPolicy);
  
  auto entity = ADMPolicy;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}