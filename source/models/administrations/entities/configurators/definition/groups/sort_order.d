module models.administrations.entities.configurators.definition.groups.sort_order;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupSortOrder : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupSortOrder"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "fieldName": StringAttribute, // 
        "sortingNumber": StringAttribute, // 
        "sortOrder": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupSortOrderEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfSortOrder_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroupsortorders");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupSortOrder"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMConfiguratorDefinitionGroupSortOrder);

  auto entity = ADMConfiguratorDefinitionGroupSortOrder;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}