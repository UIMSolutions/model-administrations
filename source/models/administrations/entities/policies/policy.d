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
        "IsPolicyActive": StringAttribute, // 
        "PolicyName": StringAttribute, // 
        "PolicyTypeRecId": UUIDAttribute, // 
        "PolicyType": StringAttribute, // 
        "BackingTable_SysPolicyRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_policies");
  }
}
mixin(EntityCalls!("ADMPolicy"));

version(test_model_administrations) {
  unittest {
    assert(APLFeedback);
    assert(ADMPolicy);
  
  auto entity = ADMPolicy;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}