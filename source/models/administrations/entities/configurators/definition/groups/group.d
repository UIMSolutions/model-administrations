module models.administrations.entities.configurators.definition.groups.group;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroup : DOOPEntity {
  this() { super();
    this.attributes([
      "definitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
      "isQueryBased": OOPAttributeString.descriptions(["en":""]),
      "queryTitle": OOPAttributeString.descriptions(["en":""]),
      "backingTable_ConfTable_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "admConfiguratorDefinitionGroup"; }
  override string entityClasses() { return "admConfiguratorDefinitionGroups"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto ADMConfiguratorDefinitionGroup() { return new DADMConfiguratorDefinitionGroup; } 
auto ADMConfiguratorDefinitionGroup(Json json) { return new DADMConfiguratorDefinitionGroup(json); } 

unittest {
  version(uim_entities) {
    assert(ADMConfiguratorDefinitionGroup);

  auto entity = ADMConfiguratorDefinitionGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}