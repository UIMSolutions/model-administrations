module models.administrations.entities.configurators.definition.groups.fields.field;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupField : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupField"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttributeClass, // 
        "dataSourceNumber": StringAttributeClass, // 
        "fieldGroup": StringAttributeClass, // 
        "fieldName": StringAttributeClass, // 
        "sortOrder": StringAttributeClass, // 
        "tableName": StringAttributeClass, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttributeClass, // 
        "backingTable_ConfDefinitions_BRRelationshipId": UUIDAttributeClass, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_configuratordefinitiongroupfields");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupField"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMConfiguratorDefinitionGroupField);

  auto entity = ADMConfiguratorDefinitionGroupField;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}