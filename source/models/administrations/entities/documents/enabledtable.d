module models.administrations.entities.documents.enabledtable;

@safe:
import models.administrations;

class DDocumentEnabledTableEntity : DOOPEntity {
  mixin(EntityThis!("DocumentEnabledTableEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "allowEditAlways": StringAttribute, //
        "tableEnabledId": StringAttribute, //
        "tableName": StringAttribute, //
        "backingTable_DocuTableEnabledRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documents.enabledtables");
  }
}
mixin(EntityCalls!("DocumentEnabledTableEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentEnabledTableEntity);

    auto entity = DocumentEnabledTableEntity;
    // TODO more tests
  }
}