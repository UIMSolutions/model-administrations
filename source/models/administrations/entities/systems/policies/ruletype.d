module models.administrations.entities.systems.policies.ruletype;

@safe:
import models.administrations;

// 
class DSystemPolicyRuleTypeEntity : DOOPEntity {
  mixin(EntityThis!("SystemPolicyRuleTypeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "includeParentRule": StringAttribute, // 
        "isPrecedenceSupported": BooleanAttribute, // 
        "ruleName": StringAttribute, // 
        "policyTypeRel": StringAttribute, // 
        "policyType": StringAttribute, // 
        "policyName": StringAttribute, // 
        "backingTable_SysPolicyRuleTypeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policies.ruletypes");
  }
}
mixin(EntityCalls!("SystemPolicyRuleTypeEntity"));

version(test_model_administrations) {
  unittest {
    assert(APLFeedback);
    assert(SystemPolicyRuleTypeEntity);
  
  auto entity = SystemPolicyRuleTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}