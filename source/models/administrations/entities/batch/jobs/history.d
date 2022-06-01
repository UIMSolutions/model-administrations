module models.administrations.entities.batch.jobs.history;

@safe:
import models.administrations;

class DBatchJobHistoryEntity : DOOPEntity {
  mixin(EntityThis!("BatchJobHistoryEntity"));

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
      .registerPath("administration_batchjobhistories");
  }
}
mixin(EntityCalls!("BatchJobHistoryEntity"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(BatchJobHistoryEntity);

    auto entity = BatchJobHistoryEntity;
  }
}