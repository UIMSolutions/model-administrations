module models.administrations.entities.configurators.definition.groups.tables.table;

@safe:
import models.administrations;

// 
class DADMConfiguratorDefinitionGroupTable : DOOPEntity {
  this() { super();
    this.attributes([
      "DefinitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
      "DataSourceNumber": OOPAttributeString.descriptions(["en":""]),
      "RelatedTableName": OOPAttributeString.descriptions(["en":""]),
      "SysRelation": OOPAttributeString.descriptions(["en":""]),
      "TableName": OOPAttributeString.descriptions(["en":""]),
      "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_ConfTableSelection_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admConfiguratorDefinitionGroupTable"; }
  override string entityClasses() { return "admConfiguratorDefinitionGroupTables"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMConfiguratorDefinitionGroupTable() { return new DADMConfiguratorDefinitionGroupTable; } 
auto ADMConfiguratorDefinitionGroupTable(Json json) { return new DADMConfiguratorDefinitionGroupTable(json); } 

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupTable);

  auto entity = ADMConfiguratorDefinitionGroupTable;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}