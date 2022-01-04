module models.administrations.entities.batch.jobs.history;

@safe:
import models.administrations;

class DADMBatchJobHistory : DOOPEntity {
  this() { super();
    this.attributes([
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
    ]);
  }

  override string entityClass() { return "admBatchJobHistory"; }
  override string entityClasses() { return "admBatchJobHistories"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMBatchJobHistory() { return new DADMBatchJobHistory; } 
auto ADMBatchJobHistory(Json json) { return new DADMBatchJobHistory(json); } 

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