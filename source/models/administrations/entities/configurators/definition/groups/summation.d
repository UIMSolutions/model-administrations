module models.administrations.entities.configurators.definition.groups.summation;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupSummation : DOOPEntity {
  this() { super();
    this.attributes([
      "average": OOPAttributeString.descriptions(["en":""]),
      "averageSelected": OOPAttributeString.descriptions(["en":""]),
      "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
      "countAll": OOPAttributeString.descriptions(["en":""]),
      "countSelected": OOPAttributeString.descriptions(["en":""]),
      "fieldName": OOPAttributeString.descriptions(["en":""]),
      "sumAll": OOPAttributeString.descriptions(["en":""]),
      "sumSelected": OOPAttributeString.descriptions(["en":""]),
      "tableName": OOPAttributeString.descriptions(["en":""]),
      "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_ConfSummation_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admConfiguratorDefinitionGroupSummation"; }
  override string entityClasses() { return "admConfiguratorDefinitionGroupSummations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMConfiguratorDefinitionGroupSummation() { return new DADMConfiguratorDefinitionGroupSummation; } 
auto ADMConfiguratorDefinitionGroupSummation(Json json) { return new DADMConfiguratorDefinitionGroupSummation(json); } 

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupSummation);

  auto entity = ADMConfiguratorDefinitionGroupSummation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}