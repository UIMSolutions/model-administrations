module models.administrations.entities.policies.internal_organization_assignment;

@safe:
import models.administrations;

// 
class DADMPolicyInternalOrganizationAssignment : DOOPEntity {
  this() { super();
    this.attributes([
      "ValidFrom": OOPAttributeString.descriptions(["en":""]),
      "ValidTo": OOPAttributeString.descriptions(["en":""]),
      "PolicyName": OOPAttributeString.descriptions(["en":""]),
      "PolicyType": OOPAttributeString.descriptions(["en":""]),
      "OrganizationHierarchyName": OOPAttributeString.descriptions(["en":""]),
      "LegalEntityId": OOPAttributeUUID.descriptions(["en":""]),
      "OperatingUnitNumber": OOPAttributeString.descriptions(["en":""]),
      "BackingTable_SysPolicyOrganizationRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMPolicyInternalOrganizationAssignment"; }
  override string entityClasses() { return "aDMPolicyInternalOrganizationAssignments"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMPolicyInternalOrganizationAssignment() { return new DADMPolicyInternalOrganizationAssignment; } 
auto ADMPolicyInternalOrganizationAssignment(Json json) { return new DADMPolicyInternalOrganizationAssignment(json); } 

unittest {
  version(uim_entities) {
    assert(ADMPolicyInternalOrganizationAssignment);
  
  auto entity = ADMPolicyInternalOrganizationAssignment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}