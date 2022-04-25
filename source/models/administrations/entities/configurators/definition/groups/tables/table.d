module models.administrations.entities.configurators.definition.groups.tables.table;

@safe:
import models.administrations;

// 
class DADMConfiguratorDefinitionGroupTable : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupTable"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "DefinitionGroupId": OOPAttributeUUID.descriptions(["en":""]),
        "DataSourceNumber": OOPAttributeString.descriptions(["en":""]),
        "RelatedTableName": OOPAttributeString.descriptions(["en":""]),
        "SysRelation": OOPAttributeString.descriptions(["en":""]),
        "TableName": OOPAttributeString.descriptions(["en":""]),
        "Relationship_ConfiguratorDefinitionGroupEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "backingTable_ConfTableSelection_BRRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "Relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
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