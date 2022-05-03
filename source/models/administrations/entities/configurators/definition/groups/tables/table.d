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
        "DefinitionGroupId": UUIDAttributeClass, // 
        "DataSourceNumber": StringAttributeClass, // 
        "RelatedTableName": StringAttributeClass, // 
        "SysRelation": StringAttributeClass, // 
        "TableName": StringAttributeClass, // 
        "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttributeClass, // 
        "backingTable_ConfTableSelection_BRRelationshipId": UUIDAttributeClass, // 
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_configuratordefinitiongrouptables");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupTable"));

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