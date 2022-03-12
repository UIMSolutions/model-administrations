module models.administrations.entities.policies.organization;

@safe:
import models.administrations;

// 
class DADMPolicyOrganization : DOOPEntity {
  mixin(OOPEntityThis!("ADMPolicyOrganization"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
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
      ])
      .registerPath("admin_policyorganizations");
  }
}
mixin(OOPEntityCalls!("ADMPolicyOrganization"));

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