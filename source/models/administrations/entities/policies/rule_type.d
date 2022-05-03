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
        "includeParentRule": StringAttributeClass, // 
        "isPrecedenceSupported": StringAttributeClass, // 
        "ruleName": StringAttributeClass, // 
        "policyTypeRel": StringAttributeClass, // 
        "policyType": StringAttributeClass, // 
        "policyName": StringAttributeClass, // 
        "backingTable_SysPolicyRuleTypeRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_policyruletypes");
  }
}
mixin(EntityCalls!("ADMPolicyRuleType"));

unittest {
  version(uim_entities) {
    assert(ADMPolicyRuleType);
  
  auto entity = ADMPolicyRuleType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}