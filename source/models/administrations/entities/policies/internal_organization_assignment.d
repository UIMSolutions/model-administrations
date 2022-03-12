module models.administrations.entities.policies.internal_organization_assignment;

@safe:
import models.administrations;

// 
class DADMPolicyInternalOrganizationAssignment : DOOPEntity {
  mixin(OOPEntityThis!("ADMPolicyInternalOrganizationAssignment"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "ValidFrom": OOPAttributeString.descriptions(["en":""]),
        "ValidTo": OOPAttributeString.descriptions(["en":""]),
        "PolicyName": OOPAttributeString.descriptions(["en":""]),
        "PolicyType": OOPAttributeString.descriptions(["en":""]),
        "OrganizationHierarchyName": OOPAttributeString.descriptions(["en":""]),
        "LegalEntityId": OOPAttributeUUID.descriptions(["en":""]),
        "OperatingUnitNumber": OOPAttributeString.descriptions(["en":""]),
        "BackingTable_SysPolicyOrganizationRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_policyinternalorganizationassignment");
  }
}
mixin(OOPEntityCalls!("ADMPolicyInternalOrganizationAssignment"));

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