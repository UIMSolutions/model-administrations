module models.administrations.entities.batch.server_schedule;

@safe:
import models.administrations;

class DADMBatchServerSchedule : DOOPEntity {
  this() { super();
    this.attributes([
      "EndTime": OOPAttributeString.descriptions(["en":""]),
      "MaximumBatchThreads": OOPAttributeString.descriptions(["en":""]),
      "AOSInstanceName": OOPAttributeString.descriptions(["en":""]),
      "StartTime": OOPAttributeString.descriptions(["en":""]),
      "backingTable_BatchServerConfigRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admBatchServerSchedule"; }
  override string entityClasses() { return "admBatchServerSchedules"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMBatchServerSchedule() { return new DADMBatchServerSchedule; } 
auto ADMBatchServerSchedule(Json json) { return new DADMBatchServerSchedule(json); } 

unittest {
  version(uim_entities) {
    assert(ADMBatchServerSchedule);

  auto entity = ADMBatchServerSchedule;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}