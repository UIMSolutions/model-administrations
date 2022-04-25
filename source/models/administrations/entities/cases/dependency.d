module models.administrations.entities.cases.dependency;

@safe:
import models.administrations;

class DADMCaseDependency : DOOPEntity {
  mixin(EntityThis!("ADMCaseDependency"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "Case": OOPAttributeString.descriptions(["en":""]),
        "ParentCase": OOPAttributeString.descriptions(["en":""]),
        "CaseId": OOPAttributeUUID.descriptions(["en":""]),
        "ParentCaseId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_casedependencies");
  }
}
mixin(EntityCalls!("ADMCaseDependency"));

unittest {
  version(uim_entities) {
    assert(ADMCaseDependency);

  auto entity = ADMCaseDependency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}