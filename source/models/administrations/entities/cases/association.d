module models.administrations.entities.cases.association;

@safe:
import models.administrations;

class DADMCaseAssociation : DOOPEntity {
  mixin(EntityThis!("ADMCaseAssociation"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AssociationCompany": StringAttributeClass, // 
        "AssociationId": UUIDAttributeClass, // 
        "CaseId": UUIDAttributeClass, // 
        "CaseRecId": UUIDAttributeClass, // 
        "EntityType": StringAttributeClass, // 
        "isPrimary": StringAttributeClass, // 
        "Reference": StringAttributeClass, // 
        "Relationship_CaseDetailEntityRelationshipId": UUIDAttributeClass, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_caseassociationS");
  }
}
mixin(EntityCalls!("ADMCaseAssociation"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMCaseAssociation);

  auto entity = ADMCaseAssociation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}