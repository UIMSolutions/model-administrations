module models.administrations.entities.documentroutings.job;

@safe:
import models.administrations;

class DDocumentRoutingJobEntity : DOOPEntity {
  mixin(EntityThis!("DocumentRoutingJobEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "jobId": StringAttribute, //
        "activityId": StringAttribute, //
        "printerName": StringAttribute, //
        "printerPath": StringAttribute, //
        "reportName": StringAttribute, //
        "jobStatus": StringAttribute, //
        "message": StringAttribute, //
        "totalNumberOfPages": StringAttribute, //
        "startProcessTime": StringAttribute, //
        "endProcessTime": StringAttribute, //
        "companyId": StringAttribute, //
        "printerId": StringAttribute, //
        "backingTable_DocumentRoutingJobRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documentroutings.jobs");
  }
}
mixin(EntityCalls!("DocumentRoutingJobEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentRoutingJobEntity);

    auto entity = DocumentRoutingJobEntity;
    // TODO more tests
  }
}