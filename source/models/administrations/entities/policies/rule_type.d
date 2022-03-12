module models.administrations.entities.policies.rule_type;

@safe:
import models.administrations;

// 
class DADMPolicyRuleType : DOOPEntity {
  mixin(OOPEntityThis!("ADMPolicyRuleType"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "includeParentRule": OOPAttributeString.descriptions(["en":""]),
        "isPrecedenceSupported": OOPAttributeString.descriptions(["en":""]),
        "ruleName": OOPAttributeString.descriptions(["en":""]),
        "policyTypeRel": OOPAttributeString.descriptions(["en":""]),
        "policyType": OOPAttributeString.descriptions(["en":""]),
        "policyName": OOPAttributeString.descriptions(["en":""]),
        "backingTable_SysPolicyRuleTypeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_policyruletypes");
  }
}
mixin(OOPEntityCalls!("ADMPolicyRuleType"));

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