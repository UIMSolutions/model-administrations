module models.administrations.entities.policies.type;

@safe:
import models.administrations;

// 
class DADMPolicyType : DOOPEntity {
  this() { super();
    this.attributes([
      "policyName": OOPAttributeString.descriptions(["en":""]),
      "purpose": OOPAttributeString.descriptions(["en":""]),
      "dropDialog": OOPAttributeString.descriptions(["en":""]),
      "isPolicyReadOnly": OOPAttributeString.descriptions(["en":""]),
      "isReassignOrganizationSupported": OOPAttributeString.descriptions(["en":""]),
      "policyType": OOPAttributeString.descriptions(["en":""]),
      "backingTable_SysPolicyTypeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMPolicyType"; }
  override string entityClasses() { return "aDMPolicyTypes"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMPolicyType() { return new DADMPolicyType; } 
auto ADMPolicyType(Json json) { return new DADMPolicyType(json); } 

unittest {
  version(uim_entities) {
    assert(ADMPolicyType);
  
  auto entity = ADMPolicyType;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}