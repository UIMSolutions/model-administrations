module models.administrations.entities.policies.rule_type;

@safe:
import models.administrations;

// 
class DADMPolicyRuleType : DOOPEntity {
  mixin(EntityThis!("ADMPolicyRuleType"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "includeParentRule": StringAttribute, // 
        "isPrecedenceSupported": StringAttribute, // 
        "ruleName": StringAttribute, // 
        "policyTypeRel": StringAttribute, // 
        "policyType": StringAttribute, // 
        "policyName": StringAttribute, // 
        "backingTable_SysPolicyRuleTypeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("admin_policyruletypes");
  }
}
mixin(EntityCalls!("ADMPolicyRuleType"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMPolicyRuleType);
  
  auto entity = ADMPolicyRuleType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}