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
        "hierarchyType": StringAttributeClass, // 
        "hierarchyName": StringAttributeClass, // 
        "organization": StringAttributeClass, // 
        "partyNumber": StringAttributeClass, // 
        "policy": StringAttributeClass, // 
        "policyName": StringAttributeClass, // 
        "policyTypeRel": StringAttributeClass, // 
        "policyType": StringAttributeClass, // 
        "validFrom": StringAttributeClass, // 
        "validTo": StringAttributeClass, // 
        "backingTable_SysPolicyOrganizationRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_policyorganizations");
  }
}
mixin(EntityCalls!("ADMPolicyOrganization"));

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