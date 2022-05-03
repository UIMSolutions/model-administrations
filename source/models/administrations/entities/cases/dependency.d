module models.administrations.entities.cases.dependency;

@safe:
import models.administrations;

class DADMCaseDependency : DOOPEntity {
  mixin(EntityThis!("ADMCaseDependency"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Case": StringAttributeClass, // 
        "ParentCase": StringAttributeClass, // 
        "CaseId": UUIDAttributeClass, // 
        "ParentCaseId": UUIDAttributeClass, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
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