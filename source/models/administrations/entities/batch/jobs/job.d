module models.administrations.entities.batch.jobs.job;

@safe:
import models.administrations;

class DBatchJobEntity : DOOPEntity {
  mixin(EntityThis!("BatchJobEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "canceledBy":UserIdAttribute, // 
        "jobDescription": StringAttribute, // 
        "companyAccounts": StringAttribute, // 
        "partitionKey": StringAttribute, // 
        "endDateTime": DatetimeAttribute, //  
        "finishing": StringAttribute, // 
        "saveJobToHistory": StringAttribute, // 
        "origStartDateTime": DatetimeAttribute, //  
        "recurrence": StringAttribute, // 
        "runtimeJob": StringAttribute, // 
        "startDateTime": DatetimeAttribute, //  
        "status": StringAttribute, // 
        "startDate": StringAttribute, // 
        "startTime": StringAttribute, // 
        "batchJobRecId": UUIDAttribute, // 
        "executingBy":UserIdAttribute, // 
        "backingTable_BatchJobRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchjobs");
  }
}
mixin(EntityCalls!("BatchJobEntity"));

version(test_model_administrations) {
  unittest {
    assert(BatchJobEntity);

    auto entity = BatchJobEntity;
  }
}