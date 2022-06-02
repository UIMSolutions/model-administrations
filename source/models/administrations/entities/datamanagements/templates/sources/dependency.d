module models.administrations.entities.datamanagements.templates.sources.dependency;

@safe:
import models.administrations;

class DDataManagementTemplateSourceDependencyEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateSourceDependencyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "templateId": StringAttribute, //
        "sourceEntity": StringAttribute, //
        "dependentOnEntity": StringAttribute, //
        "relationName": StringAttribute, //
        "description": StringAttribute, //
        "friendlyName": StringAttribute, //
        "validationRequired": StringAttribute, //
        "relationship_DefinitionGroupTemplateSourceDependencyRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.templates.sources");
  }
}
mixin(EntityCalls!("DataManagementTemplateSourceDependencyEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementTemplateSourceDependencyEntity);

    auto entity = DataManagementTemplateSourceDependencyEntity;
    // TODO more tests
  }
}