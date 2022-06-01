module models.administrations.entities.configurators.definition.groups.sortorder;

@safe:
import models.administrations;

class DConfiguratorDefinitionGroupSortOrderEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupSortOrderEntity"));

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
mixin(EntityCalls!("ConfiguratorDefinitionGroupSortOrderEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorDefinitionGroupSortOrderEntity);

    auto entity = ConfiguratorDefinitionGroupSortOrderEntity;
  }
}