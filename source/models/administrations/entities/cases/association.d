module models.administrations.entities.cases.association;

@safe:
import models.administrations;

class DADMCaseAssociation : DOOPEntity {
  mixin(OOPEntityThis!("ADMCaseAssociation"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "AssociationCompany": OOPAttributeString.descriptions(["en":""]),
        "AssociationId": OOPAttributeUUID.descriptions(["en":""]),
        "CaseId": OOPAttributeUUID.descriptions(["en":""]),
        "CaseRecId": OOPAttributeUUID.descriptions(["en":""]),
        "EntityType": OOPAttributeString.descriptions(["en":""]),
        "isPrimary": OOPAttributeString.descriptions(["en":""]),
        "Reference": OOPAttributeString.descriptions(["en":""]),
        "Relationship_CaseDetailEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_caseassociationS");
  }
}
mixin(OOPEntityCalls!("ADMCaseAssociation"));

unittest {
  version(uim_entities) {
    assert(ADMCaseAssociation);

  auto entity = ADMCaseAssociation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}