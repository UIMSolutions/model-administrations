module models.administrations.entities.batch.jobs.history;

@safe:
import models.administrations;

class DADMBatchJobHistory : DOOPEntity {
  mixin(EntityThis!("ADMBatchJobHistory"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "AlertsProcessed": OOPAttributeString.descriptions(["en":""]),
        "JobDescription": OOPAttributeString.descriptions(["en":""]),
        "EndDateTime": OOPAttributeString.descriptions(["en":""]),
        "Finishing": OOPAttributeString.descriptions(["en":""]),
        "OrigStartDateTime": OOPAttributeString.descriptions(["en":""]),
        "StartDateTime": OOPAttributeString.descriptions(["en":""]),
        "Status": OOPAttributeString.descriptions(["en":""]),
        "Company": OOPAttributeString.descriptions(["en":""]),
        "BatchJobId": OOPAttributeUUID.descriptions(["en":""]),
        "BatchCreatedBy":OOPAttributeUserId.descriptions(["en":""]),
        "CanceledBy":OOPAttributeUserId.descriptions(["en":""]),
        "DataPartition": OOPAttributeString.descriptions(["en":""]),
        "backingTable_BatchJobHistoryRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_batchjobhistories");
  }
}
mixin(EntityCalls!("ADMBatchJobHistory"));

unittest {
  version(uim_entities) {
    assert(ADMBatchJobHistory);

  auto entity = ADMBatchJobHistory;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}