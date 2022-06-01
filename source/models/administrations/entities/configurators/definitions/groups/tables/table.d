module models.administrations.entities.configurators.definition.groups.tables.table;

@safe:
import models.administrations;

// 
class DConfiguratorDefinitionGroupTableEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupTableEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "dataSourceNumber": StringAttribute, // 
        "relatedTableName": StringAttribute, // 
        "sysRelation": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfTableSelection_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongrouptables");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupTableEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorDefinitionGroupTableEntity);

    auto entity = ConfiguratorDefinitionGroupTableEntity;
  }
}