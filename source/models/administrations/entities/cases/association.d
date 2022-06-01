module models.administrations.entities.cases.association;

@safe:
import models.administrations;

class DADMCaseAssociation : DOOPEntity {
  mixin(EntityThis!("ADMCaseAssociation"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AssociationCompany": StringAttribute, // 
        "AssociationId": UUIDAttribute, // 
        "CaseId": UUIDAttribute, // 
        "CaseRecId": UUIDAttribute, // 
        "EntityType": StringAttribute, // 
        "isPrimary": StringAttribute, // 
        "Reference": StringAttribute, // 
        "Relationship_CaseDetailEntityRelationshipId": UUIDAttribute, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_caseassociationS");
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