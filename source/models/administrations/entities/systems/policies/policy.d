module models.administrations.entities.systems.policies.policy;

@safe:
import models.administrations;

class DSystemPolicyEntity : DOOPEntity {
  mixin(EntityThis!("SystemPolicyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "isPolicyActive": BooleanAttribute, // 
        "policyName": StringAttribute, // 
        "policyTypeRecId": UUIDAttribute, // 
        "policyType": StringAttribute, // 
        "backingTable_SysPolicyRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policies");
  }
}
mixin(EntityCalls!("SystemPolicyEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemPolicyEntity);
  
    auto entity = SystemPolicyEntity;
  }
}