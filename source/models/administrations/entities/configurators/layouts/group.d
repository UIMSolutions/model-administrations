module models.administrations.entities.configurators.layouts.group;

@safe:
import models.administrations;

class DConfiguratorLayoutGroupEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorLayoutGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "layoutGroupId": StringAttribute, //
        "name": StringAttribute, //
        "layoutType": StringAttribute, //
        "definitionGroupId": StringAttribute, //
        "fileStructure": StringAttribute, //
        "delimitedBy": StringAttribute, //
        "delimiterCharacter": StringAttribute, //
        "textQualifier": StringAttribute, //
        "export": StringAttribute, //
        "import": StringAttribute, //
        "registerType": StringAttribute, //
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": StringAttribute, //
        "backingTable_ConfLayoutGroups_BRRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //  
    ])
      .registerPath("administration_configurators.layouts.groups");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutGroupEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorLayoutGroupEntity);

    auto entity = ConfiguratorLayoutGroupEntity;
    // TODO more tests
  }
}