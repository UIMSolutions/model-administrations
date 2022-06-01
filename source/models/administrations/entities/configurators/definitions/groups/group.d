module models.administrations.entities.configurators.definition.groups.group;

@safe:
import models.administrations;

class DConfiguratorDefinitionGroupEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupEntity"));

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
mixin(EntityCalls!("ConfiguratorDefinitionGroupEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorDefinitionGroupEntity);

    auto entity = ConfiguratorDefinitionGroupEntity;
    // TODO more tests
  }
}