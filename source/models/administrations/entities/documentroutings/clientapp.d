module models.administrations.entities.documentroutings.clientapp;

@safe:
import models.administrations;

class DDocumentRoutingClientAppEntity : DOOPEntity {
  mixin(EntityThis!("DocumentRoutingClientAppEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "clientApplicationId": StringAttribute, //
        "clientApplicationDescription": StringAttribute, //
        "backingTable_DocumentRoutingClientAppRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documentroutings.clientapps");
  }
}
mixin(EntityCalls!("DocumentRoutingClientAppEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentRoutingClientAppEntity);

    auto entity = DocumentRoutingClientAppEntity;
    // TODO more tests
  }
}