module models.administrations.entities.batch.jobs.job;

@safe:
import models.administrations;

class DBatchJobEntity : DOOPEntity {
  mixin(EntityThis!("BatchJobEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CanceledBy":UserIdAttribute, // 
        "JobDescription": StringAttribute, // 
        "CompanyAccounts": StringAttribute, // 
        "PartitionKey": StringAttribute, // 
        "EndDateTime": DatetimeAttribute, //  
        "Finishing": StringAttribute, // 
        "SaveJobToHistory": StringAttribute, // 
        "OrigStartDateTime": DatetimeAttribute, //  
        "Recurrence": StringAttribute, // 
        "RuntimeJob": StringAttribute, // 
        "StartDateTime": DatetimeAttribute, //  
        "Status": StringAttribute, // 
        "StartDate": StringAttribute, // 
        "StartTime": StringAttribute, // 
        "BatchJobRecId": UUIDAttribute, // 
        "ExecutingBy":UserIdAttribute, // 
        "backingTable_BatchJobRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchjobs");
  }
}
mixin(EntityCalls!("BatchJobEntity"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(BatchJobEntity);

  auto entity = BatchJobEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}