module models.administrations.entities.policies.policy;

@safe:
import models.administrations;

// 
class DADMPolicy : DOOPEntity {
  mixin(OOPEntityThis!("ADMPolicy"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "IsPolicyActive": OOPAttributeString.descriptions(["en":""]),
        "PolicyName": OOPAttributeString.descriptions(["en":""]),
        "PolicyTypeRecId": OOPAttributeUUID.descriptions(["en":""]),
        "PolicyType": OOPAttributeString.descriptions(["en":""]),
        "BackingTable_SysPolicyRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_policies");
  }
}
mixin(OOPEntityCalls!("ADMPolicy"));

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