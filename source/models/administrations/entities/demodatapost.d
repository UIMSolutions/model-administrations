module models.administrations.entities.demodatapost;

@safe:
import models.administrations;

class DDemoDataPostEntity : DOOPEntity {
  mixin(EntityThis!("DemoDataPostEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "demoDataJob": StringAttribute, //
        "lineNum": StringAttribute, //
        "document": StringAttribute, //
        "documentTarget": StringAttribute, //
        "fromDocument": StringAttribute, //
        "toDocument": StringAttribute, //
        "startDate": StringAttribute, //
        "endDate": StringAttribute, //
        "processOnImport": StringAttribute, //
        "demoDataJobStatus": StringAttribute, //
        "dataProjectId": StringAttribute, //
        "backingTable_DemoDataPostRunDocumentRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_demodataposts");
  }
}
mixin(EntityCalls!("DemoDataPostEntity"));

version(test_model_administrations) {
  unittest {
    assert(DemoDataPostEntity);

    auto entity = DemoDataPostEntity;
    // TODO more tests
  }
}