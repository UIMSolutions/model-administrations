module models.administrations.entities.datamanagements.templates.template_;

@safe:
import models.administrations;

class DDataManagementTemplateEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateEntity"));

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
mixin(EntityCalls!("DataManagementTemplateEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementTemplateEntity);

    auto entity = DataManagementTemplateEntity;
    // TODO more tests
  }
}