module models.administrations.entities.policies.internal_organization_assignment;

@safe:
import models.administrations;

// 
class DADMPolicyInternalOrganizationAssignment : DOOPEntity {
  mixin(EntityThis!("ADMPolicyInternalOrganizationAssignment"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ValidFrom": StringAttribute, // 
        "ValidTo": StringAttribute, // 
        "PolicyName": StringAttribute, // 
        "PolicyType": StringAttribute, // 
        "OrganizationHierarchyName": StringAttribute, // 
        "LegalEntityId": UUIDAttribute, // 
        "OperatingUnitNumber": StringAttribute, // 
        "BackingTable_SysPolicyOrganizationRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_policyinternalorganizationassignment");
  }
}
mixin(EntityCalls!("ADMPolicyInternalOrganizationAssignment"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMPolicyInternalOrganizationAssignment);
  
  auto entity = ADMPolicyInternalOrganizationAssignment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}