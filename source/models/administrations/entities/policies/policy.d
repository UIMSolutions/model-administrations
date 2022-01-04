module models.administrations.entities.policies.policy;

@safe:
import models.administrations;

// 
class DADMPolicy : DOOPEntity {
  this() { super();
    this.attributes([
      "IsPolicyActive": OOPAttributeString.descriptions(["en":""]),
      "PolicyName": OOPAttributeString.descriptions(["en":""]),
      "PolicyTypeRecId": OOPAttributeUUID.descriptions(["en":""]),
      "PolicyType": OOPAttributeString.descriptions(["en":""]),
      "BackingTable_SysPolicyRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMPolicy"; }
  override string entityClasses() { return "aDMPolicies"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMPolicy() { return new DADMPolicy; } 
auto ADMPolicy(Json json) { return new DADMPolicy(json); } 

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