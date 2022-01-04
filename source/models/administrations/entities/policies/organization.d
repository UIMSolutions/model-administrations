module models.administrations.entities.policies.organization;

@safe:
import models.administrations;

// 
class DADMPolicyOrganization : DOOPEntity {
  this() { super();
    this.attributes([
      "hierarchyType": OOPAttributeString.descriptions(["en":""]),
      "hierarchyName": OOPAttributeString.descriptions(["en":""]),
      "organization": OOPAttributeString.descriptions(["en":""]),
      "partyNumber": OOPAttributeString.descriptions(["en":""]),
      "policy": OOPAttributeString.descriptions(["en":""]),
      "policyName": OOPAttributeString.descriptions(["en":""]),
      "policyTypeRel": OOPAttributeString.descriptions(["en":""]),
      "policyType": OOPAttributeString.descriptions(["en":""]),
      "validFrom": OOPAttributeString.descriptions(["en":""]),
      "validTo": OOPAttributeString.descriptions(["en":""]),
      "backingTable_SysPolicyOrganizationRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMPolicyOrganization"; }
  override string entityClasses() { return "aDMPolicyOrganizations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMPolicyOrganization() { return new DADMPolicyOrganization; } 
auto ADMPolicyOrganization(Json json) { return new DADMPolicyOrganization(json); } 

unittest {
  version(uim_entities) {
    assert(ADMPolicyOrganization);
  
  auto entity = ADMPolicyOrganization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}