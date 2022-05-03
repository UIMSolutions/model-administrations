module models.administrations.entities.configurators.definition.groups.sort_order;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupSortOrder : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupSortOrder"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttributeClass, // 
        "fieldName": StringAttributeClass, // 
        "sortingNumber": StringAttributeClass, // 
        "sortOrder": StringAttributeClass, // 
        "tableName": StringAttributeClass, // 
        "relationship_ConfiguratorDefinitionGroupSortOrderEntityRelationshipId": UUIDAttributeClass, // 
        "backingTable_ConfSortOrder_BRRelationshipId": UUIDAttributeClass, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_configuratordefinitiongroupsortorders");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupSortOrder"));

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