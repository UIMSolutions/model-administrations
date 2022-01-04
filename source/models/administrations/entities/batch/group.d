module models.administrations.entities.batch.group;

@safe:
import models.administrations;

class DADMBatchGroup : DOOPEntity {
  this() { super();
    this.attributes([      
      "serverId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_BatchGroupRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admBatchGroup"; }
  override string entityClasses() { return "admBatchGroups"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMBatchGroup() { return new DADMBatchGroup; } 
auto ADMBatchGroup(Json json) { return new DADMBatchGroup(json); } 

unittest {
  version(uim_entities) {
    assert(ADMBatchGroup);

  auto entity = ADMBatchGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}