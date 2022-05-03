module models.administrations.entities.batch.jobs.history;

@safe:
import models.administrations;

class DADMBatchJobHistory : DOOPEntity {
  mixin(EntityThis!("ADMBatchJobHistory"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AlertsProcessed": StringAttributeClass, // 
        "JobDescription": StringAttributeClass, // 
        "EndDateTime": DatetimeAttributeClass, //  
        "Finishing": StringAttributeClass, // 
        "OrigStartDateTime": DatetimeAttributeClass, //  
        "StartDateTime": DatetimeAttributeClass, //  
        "Status": StringAttributeClass, // 
        "Company": StringAttributeClass, // 
        "BatchJobId": UUIDAttributeClass, // 
        "BatchCreatedBy":UserIdAttributeClass, // 
        "CanceledBy":UserIdAttributeClass, // 
        "DataPartition": StringAttributeClass, // 
        "backingTable_BatchJobHistoryRelationshipId": UUIDAttributeClass, // 
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