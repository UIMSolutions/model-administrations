module models.administrations.entities.batch.jobs.history;

@safe:
import models.administrations;

class DADMBatchJobHistory : DOOPEntity {
  mixin(EntityThis!("ADMBatchJobHistory"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AlertsProcessed": StringAttribute, // 
        "JobDescription": StringAttribute, // 
        "EndDateTime": DatetimeAttribute, //  
        "Finishing": StringAttribute, // 
        "OrigStartDateTime": DatetimeAttribute, //  
        "StartDateTime": DatetimeAttribute, //  
        "Status": StringAttribute, // 
        "Company": StringAttribute, // 
        "BatchJobId": UUIDAttribute, // 
        "BatchCreatedBy":UserIdAttribute, // 
        "CanceledBy":UserIdAttribute, // 
        "DataPartition": StringAttribute, // 
        "backingTable_BatchJobHistoryRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("admin_batchjobhistories");
  }
}
mixin(EntityCalls!("ADMBatchJobHistory"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMBatchJobHistory);

  auto entity = ADMBatchJobHistory;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}