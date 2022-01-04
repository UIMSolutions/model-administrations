module models.administrations.entities.configurators.definition.groups.tables.relation;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupTableRelation : DOOPEntity {
  this() { super();
    this.attributes([
      "DefinitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
      "FixedValue": OOPAttributeString.descriptions(["en":""]),
      "RelatedField": OOPAttributeString.descriptions(["en":""]),
      "RelatedTable": OOPAttributeString.descriptions(["en":""]),
      "RelationshipType": OOPAttributeString.descriptions(["en":""]),
      "SourceFieldName": OOPAttributeString.descriptions(["en":""]),
      "SourceTableName": OOPAttributeString.descriptions(["en":""]),
      "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_ConfRelations_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admConfiguratorDefinitionGroupTableRelation"; }
  override string entityClasses() { return "admConfiguratorDefinitionGroupTableRelations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMConfiguratorDefinitionGroupTableRelation() { return new DADMConfiguratorDefinitionGroupTableRelation; } 
auto ADMConfiguratorDefinitionGroupTableRelation(Json json) { return new DADMConfiguratorDefinitionGroupTableRelation(json); } 

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupTableRelation);

  auto entity = ADMConfiguratorDefinitionGroupTableRelation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}