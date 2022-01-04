module models.administrations.entities.policies.rule_type;

@safe:
import models.administrations;

// 
class DADMPolicyRuleTypeEntity : DOOPEntity {
  this() { super();
    this.attributes([
      "includeParentRule": OOPAttributeString.descriptions(["en":""]),
      "isPrecedenceSupported": OOPAttributeString.descriptions(["en":""]),
      "ruleName": OOPAttributeString.descriptions(["en":""]),
      "policyTypeRel": OOPAttributeString.descriptions(["en":""]),
      "policyType": OOPAttributeString.descriptions(["en":""]),
      "policyName": OOPAttributeString.descriptions(["en":""]),
      "backingTable_SysPolicyRuleTypeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMPolicyRuleTypeEntity"; }
  override string entityClasses() { return "aDMPolicyRuleTypeEntities"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMPolicyRuleTypeEntity() { return new DADMPolicyRuleTypeEntity; } 
auto ADMPolicyRuleTypeEntity(Json json) { return new DADMPolicyRuleTypeEntity(json); } 

unittest {
  version(uim_entities) {
    assert(ADMPolicyRuleTypeEntity);
  
  auto entity = ADMPolicyRuleTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}