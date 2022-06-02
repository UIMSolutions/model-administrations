module models.administrations.entities.documentroutings.printer;

@safe:
import models.administrations;

class DDocumentRoutingPrinterEntity : DOOPEntity {
  mixin(EntityThis!("DocumentRoutingPrinterEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "clientApp": StringAttribute, //
        "printer": StringAttribute, //
        "printerName": StringAttribute, //
        "printerDescription": StringAttribute, //
        "printerPath": StringAttribute, //
        "printerIsActive": StringAttribute, //
        "printerId": StringAttribute, //
        "printerCompanyId": StringAttribute, //
        "clientApplicationId": StringAttribute, //
        "clientApplicationDescription": StringAttribute, //
        "backingTable_DocumentRoutingPrinterAppAssociationRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documentroutings.printers");
  }
}
mixin(EntityCalls!("DocumentRoutingPrinterEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentRoutingPrinterEntity);

    auto entity = DocumentRoutingPrinterEntity;
    // TODO more tests
  }
}