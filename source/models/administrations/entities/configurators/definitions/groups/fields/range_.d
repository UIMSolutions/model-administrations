module models.administrations.entities.configurators.definition.groups.fields.range_;

@safe:
import models.administrations;

class DConfiguratorDefinitionGroupFieldRangeEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupFieldRangeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "fieldName": StringAttribute, // 
        "range": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfRange_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratorDefinitiongroupfieldranges");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupFieldRangeEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorDefinitionGroupFieldRangeEntity);

    auto entity = ConfiguratorDefinitionGroupFieldRangeEntity;
  }
}