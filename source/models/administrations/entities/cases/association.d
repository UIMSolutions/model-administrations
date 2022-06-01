module models.administrations.entities.cases.association;

@safe:
import models.administrations;

class DCaseAssociationEntity : DOOPEntity {
  mixin(EntityThis!("CaseAssociationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "associationCompany": StringAttribute, // 
        "associationId": UUIDAttribute, // 
        "caseId": UUIDAttribute, // 
        "caseRecId": UUIDAttribute, // 
        "entityType": StringAttribute, // 
        "isPrimary": StringAttribute, // 
        "reference": StringAttribute, // 
        "relationship_CaseDetailEntityRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_caseassociationS");
  }
}
mixin(EntityCalls!("CaseAssociationEntity"));

version(test_model_administrations) {
  unittest {
    assert(CaseAssociationEntity);

    auto entity = CaseAssociationEntity;
  }
}