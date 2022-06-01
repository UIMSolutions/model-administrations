module models.administrations.entities.policies.type;

@safe:
import models.administrations;

// 
class DADMPolicyType : DOOPEntity {
  mixin(EntityThis!("ADMPolicyType"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "policyName": StringAttribute, // 
        "purpose": StringAttribute, // 
        "dropDialog": StringAttribute, // 
        "isPolicyReadOnly": StringAttribute, // 
        "isReassignOrganizationSupported": StringAttribute, // 
        "policyType": StringAttribute, // 
        "backingTable_SysPolicyTypeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_policytypes");
  }
}
mixin(EntityCalls!("ADMPolicyType"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMPolicyType);
  
  auto entity = ADMPolicyType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}