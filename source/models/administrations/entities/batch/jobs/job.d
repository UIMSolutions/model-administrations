module models.administrations.entities.batch.jobs.job;

@safe:
import models.administrations;

class DADMBatchJob : DOOPEntity {
  mixin(EntityThis!("ADMBatchJob"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "CanceledBy":OOPAttributeUserId.descriptions(["en":""]),
        "JobDescription": OOPAttributeString.descriptions(["en":""]),
        "CompanyAccounts": OOPAttributeString.descriptions(["en":""]),
        "PartitionKey": OOPAttributeString.descriptions(["en":""]),
        "EndDateTime": OOPAttributeString.descriptions(["en":""]),
        "Finishing": OOPAttributeString.descriptions(["en":""]),
        "SaveJobToHistory": OOPAttributeString.descriptions(["en":""]),
        "OrigStartDateTime": OOPAttributeString.descriptions(["en":""]),
        "Recurrence": OOPAttributeString.descriptions(["en":""]),
        "RuntimeJob": OOPAttributeString.descriptions(["en":""]),
        "StartDateTime": OOPAttributeString.descriptions(["en":""]),
        "Status": OOPAttributeString.descriptions(["en":""]),
        "StartDate": OOPAttributeString.descriptions(["en":""]),
        "StartTime": OOPAttributeString.descriptions(["en":""]),
        "BatchJobRecId": OOPAttributeUUID.descriptions(["en":""]),
        "ExecutingBy":OOPAttributeUserId.descriptions(["en":""]),
        "backingTable_BatchJobRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_batchjobs");
  }
}
mixin(EntityCalls!("ADMBatchJob"));

unittest {
  version(uim_entities) {
    assert(ADMBatchJob);

  auto entity = ADMBatchJob;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}