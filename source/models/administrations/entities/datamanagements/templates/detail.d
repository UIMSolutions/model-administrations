module models.administrations.entities.datamanagements.templates.detail;

@safe:
import models.administrations;

class DDataManagementTemplateDetailEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "templateId": StringAttribute, //
        "description": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.templates");
  }
}
mixin(EntityCalls!("DataManagementTemplateDetailEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementTemplateDetailEntity);

    auto entity = DataManagementTemplateDetailEntity;
    // TODO more tests
  }
}