module models.administrations.entities.configurators.definition.groups.fields.field;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupField : DOOPEntity {
  this() { super();
    this.attributes([
      "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
      "dataSourceNumber": OOPAttributeString.descriptions(["en":""]),
      "fieldGroup": OOPAttributeString.descriptions(["en":""]),
      "fieldName": OOPAttributeString.descriptions(["en":""]),
      "sortOrder": OOPAttributeString.descriptions(["en":""]),
      "tableName": OOPAttributeString.descriptions(["en":""]),
      "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_ConfDefinitions_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admConfiguratorDefinitionGroupField"; }
  override string entityClasses() { return "admConfiguratorDefinitionGroupFields"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMConfiguratorDefinitionGroupField() { return new DADMConfiguratorDefinitionGroupField; } 
auto ADMConfiguratorDefinitionGroupField(Json json) { return new DADMConfiguratorDefinitionGroupField(json); } 

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupField);

  auto entity = ADMConfiguratorDefinitionGroupField;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}