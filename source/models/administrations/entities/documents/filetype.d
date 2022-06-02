module models.administrations.entities.documents.filetype;

@safe:
import models.administrations;

class DDocumentFileTypesEntity : DOOPEntity {
  mixin(EntityThis!("DocumentFileTypesEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "fileType": StringAttribute, //
        "fileTypeDescription": StringAttribute, //
        "nativelyWebRenderable": StringAttribute, //
        "backingTable_DocuFileTypesRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documents.filetypes");
  }
}
mixin(EntityCalls!("DocumentFileTypesEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentFileTypesEntity);

    auto entity = DocumentFileTypesEntity;
    // TODO more tests
  }
}