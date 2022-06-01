module models.administrations.entities.configurators.definition.groups.tables.table;

@safe:
import models.administrations;

// 
class DADMConfiguratorDefinitionGroupTable : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupTable"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DefinitionGroupId": UUIDAttribute, // 
        "DataSourceNumber": StringAttribute, // 
        "RelatedTableName": StringAttribute, // 
        "SysRelation": StringAttribute, // 
        "TableName": StringAttribute, // 
        "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfTableSelection_BRRelationshipId": UUIDAttribute, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongrouptables");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupTable"));

version(test_model_administrations) {
  unittest {
    assert(APLFeedback);
    assert(ADMConfiguratorDefinitionGroupTable);

  auto entity = ADMConfiguratorDefinitionGroupTable;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}