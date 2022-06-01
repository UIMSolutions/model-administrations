module models.administrations.entities.configurators.definition.groups.group;

@safe:
import models.administrations;

class DADMConfiguratorDefinitionGroup : DOOPEntity {
  mixin(EntityThis!("ADMConfiguratorDefinitionGroup"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "isQueryBased": StringAttribute, // 
        "queryTitle": StringAttribute, // 
        "backingTable_ConfTable_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroups");
  }
}
mixin(EntityCalls!("ADMConfiguratorDefinitionGroup"));

version(test_model_administrations) {
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