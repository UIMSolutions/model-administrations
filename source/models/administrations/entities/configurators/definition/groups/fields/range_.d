module models.administrations.entities.configurators.definition.groups.fields.range_;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupFieldRange : DOOPEntity {
  this() { super();
    this.attributes([
      "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
      "fieldName": OOPAttributeString.descriptions(["en":""]),
      "range": OOPAttributeString.descriptions(["en":""]),
      "tableName": OOPAttributeString.descriptions(["en":""]),
      "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_ConfRange_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admConfiguratorDefinitionGroupFieldRange"; }
  override string entityClasses() { return "admConfiguratorDefinitionGroupFieldRanges"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMConfiguratorDefinitionGroupFieldRange() { return new DADMConfiguratorDefinitionGroupFieldRange; } 
auto ADMConfiguratorDefinitionGroupFieldRange(Json json) { return new DADMConfiguratorDefinitionGroupFieldRange(json); } 

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupFieldRange);

  auto entity = ADMConfiguratorDefinitionGroupFieldRange;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}