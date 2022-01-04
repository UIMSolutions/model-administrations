module models.administrations.entities.cases.association;

@safe:
import models.administrations;

class DADMCaseAssociation : DOOPEntity {
  this() { super();
    this.attributes([
      "AssociationCompany": OOPAttributeString.descriptions(["en":""]),
      "AssociationId": OOPAttributeUUID.descriptions(["en":""]),
      "CaseId": OOPAttributeUUID.descriptions(["en":""]),
      "CaseRecId": OOPAttributeUUID.descriptions(["en":""]),
      "EntityType": OOPAttributeString.descriptions(["en":""]),
      "isPrimary": OOPAttributeString.descriptions(["en":""]),
      "Reference": OOPAttributeString.descriptions(["en":""]),
      "Relationship_CaseDetailEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admCaseAssociation"; }
  override string entityClasses() { return "admCaseAssociations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMCaseAssociation() { return new DADMCaseAssociation; } 
auto ADMCaseAssociation(Json json) { return new DADMCaseAssociation(json); } 

unittest {
  version(uim_entities) {
    assert(ADMCaseAssociation);

  auto entity = ADMCaseAssociation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}