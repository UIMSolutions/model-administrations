module models.administrations.entities.batch.jobs.job;

@safe:
import models.administrations;

class DADMBatchJob : DOOPEntity {
  mixin(EntityThis!("ADMBatchJob"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CanceledBy":UserIdAttributeClass, // 
        "JobDescription": StringAttributeClass, // 
        "CompanyAccounts": StringAttributeClass, // 
        "PartitionKey": StringAttributeClass, // 
        "EndDateTime": DatetimeAttributeClass, //  
        "Finishing": StringAttributeClass, // 
        "SaveJobToHistory": StringAttributeClass, // 
        "OrigStartDateTime": DatetimeAttributeClass, //  
        "Recurrence": StringAttributeClass, // 
        "RuntimeJob": StringAttributeClass, // 
        "StartDateTime": DatetimeAttributeClass, //  
        "Status": StringAttributeClass, // 
        "StartDate": StringAttributeClass, // 
        "StartTime": StringAttributeClass, // 
        "BatchJobRecId": UUIDAttributeClass, // 
        "ExecutingBy":UserIdAttributeClass, // 
        "backingTable_BatchJobRelationshipId": UUIDAttributeClass, // 
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