module models.administrations.entities.configurators.definition.groups.group;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroup : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroup"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttributeClass, // 
        "isQueryBased": StringAttributeClass, // 
        "queryTitle": StringAttributeClass, // 
        "backingTable_ConfTable_BRRelationshipId": UUIDAttributeClass, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_configuratordefinitiongroups");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroup"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMConfiguratorDefinitionGroup);

  auto entity = ADMConfiguratorDefinitionGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}