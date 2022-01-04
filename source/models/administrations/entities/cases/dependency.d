module models.administrations.entities.cases.dependency;

@safe:
import models.administrations;

class DADMCaseDependency : DOOPEntity {
  this() { super();
    this.attributes([
      "Case": OOPAttributeString.descriptions(["en":""]),
      "ParentCase": OOPAttributeString.descriptions(["en":""]),
      "CaseId": OOPAttributeUUID.descriptions(["en":""]),
      "ParentCaseId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admCaseDependency"; }
  override string entityClasses() { return "admCaseDependencies"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMCaseDependency() { return new DADMCaseDependency; } 
auto ADMCaseDependency(Json json) { return new DADMCaseDependency(json); } 

unittest {
  version(uim_entities) {
    assert(ADMCaseDependency);

  auto entity = ADMCaseDependency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}