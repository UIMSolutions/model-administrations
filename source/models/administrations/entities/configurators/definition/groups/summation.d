module models.administrations.entities.configurators.definition.groups.summation;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroupSummation : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroupSummation"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "average": StringAttributeClass, // 
        "averageSelected": StringAttributeClass, // 
        "definitionGroupId": UUIDAttributeClass, // 
        "countAll": StringAttributeClass, // 
        "countSelected": StringAttributeClass, // 
        "fieldName": StringAttributeClass, // 
        "sumAll": StringAttributeClass, // 
        "sumSelected": StringAttributeClass, // 
        "tableName": StringAttributeClass, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttributeClass, // 
        "backingTable_ConfSummation_BRRelationshipId": UUIDAttributeClass, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
       ])
      .registerPath("admin_configuratordefinitiongroupsummation");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroupSummation"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMConfiguratorDefinitionGroupSummation);

  auto entity = ADMConfiguratorDefinitionGroupSummation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}