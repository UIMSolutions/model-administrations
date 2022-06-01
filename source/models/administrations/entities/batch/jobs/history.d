module models.administrations.entities.batch.jobs.history;

@safe:
import models.administrations;

class DBatchJobHistoryEntity : DOOPEntity {
  mixin(EntityThis!("BatchJobHistoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "alertsProcessed": StringAttribute, // 
        "jobDescription": StringAttribute, // 
        "endDateTime": DatetimeAttribute, //  
        "finishing": StringAttribute, // 
        "origStartDateTime": DatetimeAttribute, //  
        "startDateTime": DatetimeAttribute, //  
        "status": StringAttribute, // 
        "company": StringAttribute, // 
        "batchJobId": UUIDAttribute, // 
        "batchCreatedBy":UserIdAttribute, // 
        "canceledBy":UserIdAttribute, // 
        "dataPartition": StringAttribute, // 
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