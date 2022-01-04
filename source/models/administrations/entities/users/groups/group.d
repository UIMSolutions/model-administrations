module models.administrations.entities.users.groups.group;

@safe:
import models.administrations;

// 
class DADMGroup : DOOPEntity {
  this() { super();
    this.attributes([
      "userId": OOPAttributeUUID.descriptions(["en":""]),
      "objectId": OOPAttributeUUID.descriptions(["en":""]),
      "enabled": OOPAttributeString.descriptions(["en":""]),
      "company": OOPAttributeString.descriptions(["en":""]),
      "language": OOPAttributeString.descriptions(["en":""]),
      "preferredTimeZone": OOPAttributeString.descriptions(["en":""]),
      "preferredCalendar": OOPAttributeString.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "aDMGroup"; }
  override string entityClasses() { return "aDMGroups"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMGroup() { return new DADMGroup; } 
auto ADMGroup(Json json) { return new DADMGroup(json); } 

unittest {
  version(uim_entities) {
    assert(ADMGroup);
  
  auto entity = ADMGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}