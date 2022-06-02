module models.administrations.entities.documents.type;

@safe:
import models.administrations;

class DDocumentTypeEntity : DOOPEntity {
  mixin(EntityThis!("DocumentTypeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "actionClassName": StringAttribute, //
        "docuStructureType": StringAttribute, //
        "filePlace": StringAttribute, //
        "fileRemovalConfirmation": StringAttribute, //
        "name": StringAttribute, //
        "parameters": StringAttribute, //
        "removeOption": StringAttribute, //
        "typeGroup": StringAttribute, //
        "id": StringAttribute, //
        "host": StringAttribute, //
        "site": StringAttribute, //
        "actionClassId": StringAttribute, //
        "folderPath": StringAttribute, //
        "backingTable_DocuTypeRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documents.types");
  }
}
mixin(EntityCalls!("DocumentTypeEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentTypeEntity);

    auto entity = DocumentTypeEntity;
    // TODO more tests
  }
}