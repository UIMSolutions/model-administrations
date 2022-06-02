module models.administrations.entities.datamanagements.templates.sources.source;

@safe:
import models.administrations;

class DDataManagementTemplateSourceEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateSourceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "templateId": StringAttribute, //
        "sourceEntity": StringAttribute, //
        "description": StringAttribute, //
        "relationship_DefinitionGroupTemplateSourceRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.templates.sources");
  }
}
mixin(EntityCalls!("DataManagementTemplateSourceEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementTemplateSourceEntity);

    auto entity = DataManagementTemplateSourceEntity;
    // TODO more tests
  }
}