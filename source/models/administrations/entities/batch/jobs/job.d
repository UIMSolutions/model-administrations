module models.administrations.entities.batch.jobs.job;

@safe:
import models.administrations;

class DADMBatchJob : DOOPEntity {
  this() { super();
    this.attributes([
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
    ]);
  }

  override string entityClass() { return "admBatchJob"; }
  override string entityClasses() { return "admBatchJobs"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMBatchJob() { return new DADMBatchJob; } 
auto ADMBatchJob(Json json) { return new DADMBatchJob(json); } 

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