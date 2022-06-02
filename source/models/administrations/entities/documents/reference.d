module models.administrations.entities.documents.reference;

@safe:
import models.administrations;

class DDocumentReferenceEntity : DOOPEntity {
  mixin(EntityThis!("DocumentReferenceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "documentId": StringAttribute, //
        "actualCompanyId": StringAttribute, //
        "typeId": StringAttribute, //
        "refCompanyId": StringAttribute, //
        "refRecId": StringAttribute, //
        "refTableId": StringAttribute, //
        "name": StringAttribute, //
        "restriction": StringAttribute, //
        "notes": StringAttribute, //
        "valueRecId": StringAttribute, //
        "docuValueType": StringAttribute, //
        "fileName": StringAttribute, //
        "fileType": StringAttribute, //
        "fileContents": StringAttribute, //
        "defaultAttachment": StringAttribute, //
        "relationship_DocuTypeRelationRelationshipId": StringAttribute, //
        "backingTable_DocuRefRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documents.references");
  }
}
mixin(EntityCalls!("DocumentReferenceEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentReferenceEntity);

    auto entity = DocumentReferenceEntity;
    // TODO more tests
  }
}