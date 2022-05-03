module models.administrations.entities.configurators.definition.groups.fields.range_;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupFieldRange : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupFieldRange"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttributeClass, // 
        "fieldName": StringAttributeClass, // 
        "range": StringAttributeClass, // 
        "tableName": StringAttributeClass, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttributeClass, // 
        "backingTable_ConfRange_BRRelationshipId": UUIDAttributeClass, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_configuratorDefinitiongroupfieldranges");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupFieldRange"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMConfiguratorDefinitionGroupFieldRange);

  auto entity = ADMConfiguratorDefinitionGroupFieldRange;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}