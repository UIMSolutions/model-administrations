module models.administrations.entities.policies.type;

@safe:
import models.administrations;

// 
class DADMPolicyType : DOOPEntity {
  mixin(EntityThis!("ADMPolicyType"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "policyName": OOPAttributeString.descriptions(["en":""]),
        "purpose": OOPAttributeString.descriptions(["en":""]),
        "dropDialog": OOPAttributeString.descriptions(["en":""]),
        "isPolicyReadOnly": OOPAttributeString.descriptions(["en":""]),
        "isReassignOrganizationSupported": OOPAttributeString.descriptions(["en":""]),
        "policyType": OOPAttributeString.descriptions(["en":""]),
        "backingTable_SysPolicyTypeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_policytypes");
  }
}
mixin(EntityCalls!("ADMPolicyType"));

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