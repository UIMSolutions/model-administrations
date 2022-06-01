module models.administrations.entities.configurators.definition.groups.fields.field;

@safe:
import models.administrations;

class DConfiguratorDefinitionGroupFieldEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupFieldEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "dataSourceNumber": StringAttribute, // 
        "fieldGroup": StringAttribute, // 
        "fieldName": StringAttribute, // 
        "sortOrder": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfDefinitions_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroupfields");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupFieldEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorDefinitionGroupFieldEntity);

    auto entity = ConfiguratorDefinitionGroupFieldEntity;
  }
}