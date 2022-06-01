module models.administrations.entities.policies.organization;

@safe:
import models.administrations;

// 
class DADMPolicyOrganization : DOOPEntity {
  mixin(EntityThis!("ADMPolicyOrganization"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "hierarchyType": StringAttribute, // 
        "hierarchyName": StringAttribute, // 
        "organization": StringAttribute, // 
        "partyNumber": StringAttribute, // 
        "policy": StringAttribute, // 
        "policyName": StringAttribute, // 
        "policyTypeRel": StringAttribute, // 
        "policyType": StringAttribute, // 
        "validFrom": StringAttribute, // 
        "validTo": StringAttribute, // 
        "backingTable_SysPolicyOrganizationRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_policyorganizations");
  }
}
mixin(EntityCalls!("ADMPolicyOrganization"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMPolicyOrganization);
  
  auto entity = ADMPolicyOrganization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}