module models.administrations.entities.configurators.definition.groups.sort_order;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupSortOrder : DOOPEntity {
  this() { super();
    this.attributes([
      "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
      "fieldName": OOPAttributeString.descriptions(["en":""]),
      "sortingNumber": OOPAttributeString.descriptions(["en":""]),
      "sortOrder": OOPAttributeString.descriptions(["en":""]),
      "tableName": OOPAttributeString.descriptions(["en":""]),
      "relationship_ConfiguratorDefinitionGroupSortOrderEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_ConfSortOrder_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admConfiguratorDefinitionGroupSortOrder"; }
  override string entityClasses() { return "admConfiguratorDefinitionGroupSortOrders"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMConfiguratorDefinitionGroupSortOrder() { return new DADMConfiguratorDefinitionGroupSortOrder; } 
auto ADMConfiguratorDefinitionGroupSortOrder(Json json) { return new DADMConfiguratorDefinitionGroupSortOrder(json); } 

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroupSortOrder);

  auto entity = ADMConfiguratorDefinitionGroupSortOrder;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}